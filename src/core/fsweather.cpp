

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <math.h>

#include <ysclass.h>
#include <ysgl.h>

#include "fs.h"

#ifndef YsPi
#define YsPi 3.14159265358979323846
#endif





const char *FsWeatherCloudLayer::CloudLayerTypeString(int cloudLayerType)
{
	switch(cloudLayerType)
	{
	default:
	case FSCLOUDLAYER_NONE:
		return "CLR";
	case FSCLOUDLAYER_OVERCAST:
		return "OVC";
	};
}

int FsWeatherCloudLayer::CloudLayerTypeFromString(const char str[])
{
	if(strcmp(str,"OVC")==0 || strcmp(str,"ovc")==0)
	{
		return FSCLOUDLAYER_OVERCAST;
	}
	return FSCLOUDLAYER_NONE;
}





FsWeather::FsWeather()
{
	wind.Set(0.0,0.0,0.0);
	fog=YSTRUE;
	fogVisibility=20000;
	weatherType=FSWEATHER_CLEAR;

	transWind.Set(0.0,0.0,0.0);
	transFogVisibility=20000;
	
	// Initialize rain properties
	isRaining=YSFALSE;
	rainIntensity=0.0;
	thunderTimer=0.0;
	skyColor.Set(0.5, 0.7, 1.0);  // Default clear sky blue
	fogColor.Set(0.8, 0.8, 0.8);  // Default light grey fog
}

FsWeather::~FsWeather()
{
}

void FsWeather::WeatherTransition(const double &dt)
{
	if(wind!=transWind)
	{
		YsVec3 d;
		double l,chg;

		chg=4.0*dt;

		d=transWind-wind;
		l=d.GetLength();
		if(l<chg)
		{
			wind=transWind;
		}
		else
		{
			d/=l;
			wind+=d*chg;
		}
	}

	if(YsEqual(fogVisibility,transFogVisibility)!=YSTRUE)
	{
		double d,chg;

		d=transFogVisibility-fogVisibility;
		chg=10000.0*dt;

		if(fabs(d)<chg)
		{
			fogVisibility=transFogVisibility;
		}
		else
		{
			if(d>0)
			{
				fogVisibility+=chg;
			}
			else
			{
				fogVisibility-=chg;
			}
		}
	}
}

const YsVec3 &FsWeather::GetWind(void) const
{
	return wind;
}

YSRESULT FsWeather::SetWind(const YsVec3 &w)
{
	wind=w;
	transWind=w;
	return YSOK;
}

YSRESULT FsWeather::SetTransWind(const YsVec3 &w)
{
	transWind=w;
	return YSOK;
}

const double &FsWeather::GetFogVisibility(void) const
{
	return fogVisibility;
}

YSRESULT FsWeather::SetFogVisibility(const double &visibility)
{
	fogVisibility=YsBound(visibility,FS_FOG_VISIBILITY_MIN,FS_FOG_VISIBILITY_MAX);
	transFogVisibility=fogVisibility;
	return YSOK;
}

YSRESULT FsWeather::SetTransFogVisibility(const double &vis)
{
	transFogVisibility=vis;
	return YSOK;
}

void FsWeather::SetFog(YSBOOL f)
{
	fog=f;
}

YSBOOL FsWeather::GetFog(void) const
{
	return fog;
}

void FsWeather::SetCloudLayer(YSSIZE_T nLayer,const FsWeatherCloudLayer layer[])
{
	cloudLayer.Set(nLayer,layer);
}

void FsWeather::AddCloudLayer(const FsWeatherCloudLayer &layer)
{
	cloudLayer.Append(layer);
}

void FsWeather::GetCloudLayer(int &nLayer,const FsWeatherCloudLayer *&layer) const
{
	nLayer=(int)cloudLayer.GetN();
	layer=cloudLayer;
}

YSBOOL FsWeather::IsInCloudLayer(const YsVec3 &pos) const
{
	int i;
	forYsArray(i,cloudLayer)
	{
		if(cloudLayer[i].y0<=pos.y() && pos.y()<=cloudLayer[i].y1)
		{
			return YSTRUE;
		}
	}
	return YSFALSE;
}

YSRESULT FsWeather::Save(FILE *fp) const
{
	fprintf(fp,"WEATHERX\n");

	fprintf(fp,"CONSTWIND %lfm/s %lfm/s %lfm/s\n",wind.x(),wind.y(),wind.z());
	fprintf(fp,"VISIBILIT %lfm\n",fogVisibility);

	int i;
	forYsArray(i,cloudLayer)
	{
		fprintf(fp,"CLOUDLAYER %s %lfm %lfm\n",
		    FsWeatherCloudLayer::CloudLayerTypeString(cloudLayer[i].cloudLayerType),
		    cloudLayer[i].y0,
		    cloudLayer[i].y1);
	}

	fprintf(fp,"ENDWEATHER\n");

	return YSOK;
}

static const char *const weatherCmd[]=
{
	"ENDWEATHER",
	"CONSTWIND",
	"VISIBILIT",
	"CLOUDLAYER",
	NULL
};

YSRESULT FsWeather::Load(FILE *fp)
{
	// Keyword WEATHER is already read by FsWorld
	char buf[256];
	int ac;
	char *av[16];

	while(fgets(buf,256,fp)!=NULL)
	{
		if(YsArguments(&ac,av,16,buf)==YSOK)
		{
			int cmd;
			if(YsCommandNumber(&cmd,av[0],weatherCmd)==YSOK)
			{
				switch(cmd)
				{
				case 0:  // ENDWEATHER
					goto ENDWEATHER;
				case 1:  // CONSTWIND
					if(ac>=4)
					{
						double x,y,z;
						if(FsGetSpeed(x,av[1])==YSOK &&
						   FsGetSpeed(y,av[2])==YSOK &&
						   FsGetSpeed(z,av[3])==YSOK)
						{
							wind.Set(x,y,z);
							transWind.Set(x,y,z);  // 2009/04/28
						}
					}
					break;
				case 2:  // VISIBILIT
					if(ac>=2)
					{
						double l;
						if(FsGetLength(l,av[1])==YSOK)
						{
							fogVisibility=l;
							transFogVisibility=l;  // 2009/04/28
						}
					}
					break;
				case 3: // 	"CLOUDLAYER",
					if(ac>=4)
					{
						FsWeatherCloudLayer lyr;
						lyr.cloudLayerType=FsWeatherCloudLayer::CloudLayerTypeFromString(av[1]);
						FsGetLength(lyr.y0,av[2]);
						FsGetLength(lyr.y1,av[3]);
						cloudLayer.Append(lyr);
					}
					break;
				}
			}
		}
	}

ENDWEATHER:
	return YSOK;
}

void FsWeather::SetWeatherType(FSWEATHERTYPE type)
{
	weatherType = type;
	if(type == FSWEATHER_RAIN)
	{
		isRaining = YSTRUE;
		rainIntensity = 0.8;
		// Set greyish colors for rain
		skyColor.Set(0.4, 0.4, 0.5);  // Dark greyish sky
		fogColor.Set(0.5, 0.5, 0.6);  // Greyish fog
		
		// Increase fog for rain effect
		if(fogVisibility > 8000.0)
		{
			SetFogVisibility(8000.0);
		}
		

	}
	else
	{
		isRaining = YSFALSE;
		rainIntensity = 0.0;
		skyColor.Set(0.5, 0.7, 1.0);  // Clear blue sky
		fogColor.Set(0.8, 0.8, 0.8);  // Light grey fog
	}
}

FSWEATHERTYPE FsWeather::GetWeatherType(void) const
{
	return weatherType;
}

YSBOOL FsWeather::IsRaining(void) const
{
	return isRaining;
}

double FsWeather::GetRainIntensity(void) const
{
	return rainIntensity;
}

const YsVec3 &FsWeather::GetSkyColor(void) const
{
	return skyColor;
}

const YsVec3 &FsWeather::GetFogColor(void) const
{
	return fogColor;
}

void FsWeather::UpdateRain(const double &dt)
{
	if(isRaining == YSTRUE)
	{
		// Update thunder timer
		thunderTimer -= dt;
		if(thunderTimer <= 0.0)
		{
			// Random thunder every 15-45 seconds for more realistic timing
			thunderTimer = 15.0 + (rand() % 30);
		}
		
		// More dynamic rain intensity variation
		static double intensityTime = 0.0;
		intensityTime += dt;
		
		// Base intensity with multiple wave variations for realistic rain
		double wave1 = sin(intensityTime * 0.1) * 0.2;
		double wave2 = sin(intensityTime * 0.3) * 0.1;
		double wave3 = sin(intensityTime * 0.05) * 0.15;
		
		rainIntensity = 0.7 + wave1 + wave2 + wave3;
		
		// Clamp intensity to realistic range
		if(rainIntensity < 0.4) rainIntensity = 0.4;
		if(rainIntensity > 1.0) rainIntensity = 1.0;
		
		// Increase intensity briefly during thunder
		if(thunderTimer > 0.0 && thunderTimer < 2.0)
		{
			rainIntensity += 0.2;
			if(rainIntensity > 1.0) rainIntensity = 1.0;
		}
	}
}

void FsWeather::DrawRain(const YsVec3 &cameraPos, const YsVec3 &cameraDir) const
{
	if(isRaining != YSTRUE || rainIntensity <= 0.0)
	{
		return;
	}

	// Rain particle rendering using OpenGL
	glPushAttrib(GL_ALL_ATTRIB_BITS);
	
	glDisable(GL_LIGHTING);
	glDisable(GL_TEXTURE_2D);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glEnable(GL_DEPTH_TEST);
	
	// Create a grid in front of camera for rain particles
	const int gridSizeX = 40;
	const int gridSizeZ = 40;
	const double gridSpacing = 25.0;
	const double baseDistance = 30.0;  // Start rain closer to camera
	const double maxDistance = 600.0;   // Extend to reasonable distance
	
	// Calculate camera forward and right vectors
	YsVec3 forward = cameraDir;
	forward.Normalize();
	YsVec3 up(0.0, 1.0, 0.0);
	YsVec3 right = forward ^ up;
	right.Normalize();
	up = right ^ forward;
	up.Normalize();
	
	// Draw rain particles as small points and short lines
	glPointSize(1.5f);
	
	// Multiple depth layers for better 3D effect
	for(int depth = 0; depth < 6; depth++)
	{
		double layerDistance = baseDistance + (depth * (maxDistance - baseDistance) / 6.0);
		float alpha = (0.9f - depth * 0.12f) * (float)rainIntensity;
		if(alpha <= 0.0f) continue;
		
		// More visible but still subtle rain color
		glColor4f(0.7f, 0.8f, 0.95f, alpha * 0.5f);
		
		glBegin(GL_LINES);
		
		// Create rain grid at this depth
		for(int x = -gridSizeX/2; x < gridSizeX/2; x++)
		{
			for(int z = -gridSizeZ/2; z < gridSizeZ/2; z++)
			{
				// Calculate world position for this grid point
				double localX = x * gridSpacing + (rand() % 10 - 5);
				double localZ = z * gridSpacing + (rand() % 10 - 5);
				
				YsVec3 gridPos = cameraPos + forward * layerDistance + 
				                right * localX + up * (rand() % 20 - 10);
				gridPos.AddZ(localZ);
				
				// Add some vertical randomness
				double dropY = gridPos.y() + 100.0 + (rand() % 200);
				
				// Small rain drops - much shorter lines
				double dropLength = 4.0 + (rand() % 4);
				
				// Add slight wind effect
				YsVec3 windOffset = wind * 0.05;
				
				// Draw small rain drop
				glVertex3d(gridPos.x() + windOffset.x(), dropY, gridPos.z() + windOffset.z());
				glVertex3d(gridPos.x() + windOffset.x(), dropY - dropLength, gridPos.z() + windOffset.z());
			}
		}
		
		glEnd();
		
		// Add some scattered individual drops for variety
		glBegin(GL_POINTS);
		for(int i = 0; i < 80; i++)
		{
			double angle = (rand() % 360) * YsPi / 180.0;
			double radius = (rand() % (int)(layerDistance * 0.4));
			double dropX = cameraPos.x() + radius * cos(angle);
			double dropZ = cameraPos.z() + radius * sin(angle);
			double dropY = cameraPos.y() + 30.0 + (rand() % 80);
			
			glVertex3d(dropX, dropY, dropZ);
		}
		glEnd();
	}
	
	// Add close-range rain drops around player for immersion
	glColor4f(0.8f, 0.9f, 1.0f, 0.7f * (float)rainIntensity);
	glBegin(GL_LINES);
	
	// Create a cylinder of rain around the player (more realistic than sphere)
	for(int i = 0; i < 150; i++)
	{
		// Random position in a cylinder around camera
		double angle = (rand() % 360) * YsPi / 180.0;
		double radius = 15.0 + (rand() % 40);  // Close to player
		double height = 10.0 + (rand() % 60);  // Vary height
		
		double dropX = cameraPos.x() + radius * cos(angle);
		double dropZ = cameraPos.z() + radius * sin(angle);
		double dropY = cameraPos.y() + height;
		
		double dropLength = 3.0 + (rand() % 3);
		YsVec3 windOffset = wind * 0.04;
		
		glVertex3d(dropX + windOffset.x(), dropY, dropZ + windOffset.z());
		glVertex3d(dropX + windOffset.x(), dropY - dropLength, dropZ + windOffset.z());
	}
	
	glEnd();
	
	// Enhanced thunder flash effect
	if(thunderTimer > 0.0 && thunderTimer < 1.0)
	{
		float flashIntensity = 0.0f;
		if(thunderTimer < 0.1) // Bright initial flash
		{
			flashIntensity = (0.1f - (float)thunderTimer) * 10.0f;
		}
		else if(thunderTimer < 0.3) // Secondary flicker
		{
			flashIntensity = sin((float)thunderTimer * 50.0f) * 0.3f;
		}
		
		if(flashIntensity > 0.0f)
		{
			glColor4f(1.0f, 1.0f, 1.0f, flashIntensity * 0.4f);
			
			// Draw larger flash covering more of the sky
			const double flashSize = 5000.0;
			glBegin(GL_QUADS);
			glVertex3d(cameraPos.x() - flashSize, cameraPos.y() + 800, cameraPos.z() - flashSize);
			glVertex3d(cameraPos.x() + flashSize, cameraPos.y() + 800, cameraPos.z() - flashSize);
			glVertex3d(cameraPos.x() + flashSize, cameraPos.y() + 800, cameraPos.z() + flashSize);
			glVertex3d(cameraPos.x() - flashSize, cameraPos.y() + 800, cameraPos.z() + flashSize);
			glEnd();
		}
	}
	
	glPopAttrib();
}


