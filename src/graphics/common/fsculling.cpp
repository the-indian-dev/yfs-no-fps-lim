#include "fsculling.h"
#include <ysclass.h>
#include <ysdef.h>
#define FSSIMPLEWINDOW_DONT_INCLUDE_OPENGL_HEADERS
#include <fssimplewindow.h>

#ifndef __APPLE__
#include <GL/gl.h>
#include <GL/glu.h>
#else
#include <OpenGL/gl.h>
#include <OpenGL/glu.h>
#endif

FsCullingUtil::Frustum FsCullingUtil::CreateFrustumFromCurrentMatrix(void)
{
    // Create a local frustum variable
    Frustum frustum;

    // Get the current modelview and projection matrices
    GLfloat modelMatrix[16];
    GLfloat projMatrix[16];
    glGetFloatv(GL_MODELVIEW_MATRIX, modelMatrix);
    glGetFloatv(GL_PROJECTION_MATRIX, projMatrix);

    // Combine the matrices (clip = proj * model)
    GLfloat clipMatrix[16];

    // Multiply matrices
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            clipMatrix[i*4+j] = 0.0f;
            for (int k = 0; k < 4; k++) {
                clipMatrix[i*4+j] += projMatrix[i*4+k] * modelMatrix[k*4+j];
            }
        }
    }

    // Extract frustum planes
    // Left plane
    {
        YsVec3 normal(clipMatrix[3] + clipMatrix[0],
                      clipMatrix[7] + clipMatrix[4],
                      clipMatrix[11] + clipMatrix[8]);
        YsVec3 origin = YsVec3::Origin();
        if(normal.GetSquareLength() > YsTolerance)
        {
            double len = normal.GetLength();
            origin = normal * (-clipMatrix[15] - clipMatrix[12]) / len;
            frustum.planes[0].Set(origin, normal);
        }
        else
        {
            frustum.planes[0].Set(origin, YsVec3(1.0, 0.0, 0.0));
        }
    }

    // Right plane
    {
        YsVec3 normal(clipMatrix[3] - clipMatrix[0],
                      clipMatrix[7] - clipMatrix[4],
                      clipMatrix[11] - clipMatrix[8]);
        YsVec3 origin = YsVec3::Origin();
        if(normal.GetSquareLength() > YsTolerance)
        {
            double len = normal.GetLength();
            origin = normal * (-clipMatrix[15] + clipMatrix[12]) / len;
            frustum.planes[1].Set(origin, normal);
        }
        else
        {
            frustum.planes[1].Set(origin, YsVec3(1.0, 0.0, 0.0));
        }
    }

    // Bottom plane
    {
        YsVec3 normal(clipMatrix[3] + clipMatrix[1],
                      clipMatrix[7] + clipMatrix[5],
                      clipMatrix[11] + clipMatrix[9]);
        YsVec3 origin = YsVec3::Origin();
        if(normal.GetSquareLength() > YsTolerance)
        {
            double len = normal.GetLength();
            origin = normal * (-clipMatrix[15] - clipMatrix[13]) / len;
            frustum.planes[2].Set(origin, normal);
        }
        else
        {
            frustum.planes[2].Set(origin, YsVec3(0.0, 1.0, 0.0));
        }
    }

    // Top plane
    {
        YsVec3 normal(clipMatrix[3] - clipMatrix[1],
                      clipMatrix[7] - clipMatrix[5],
                      clipMatrix[11] - clipMatrix[9]);
        YsVec3 origin = YsVec3::Origin();
        if(normal.GetSquareLength() > YsTolerance)
        {
            double len = normal.GetLength();
            origin = normal * (-clipMatrix[15] + clipMatrix[13]) / len;
            frustum.planes[3].Set(origin, normal);
        }
        else
        {
            frustum.planes[3].Set(origin, YsVec3(0.0, 1.0, 0.0));
        }
    }

    // Near plane
    {
        YsVec3 normal(clipMatrix[3] + clipMatrix[2],
                      clipMatrix[7] + clipMatrix[6],
                      clipMatrix[11] + clipMatrix[10]);
        YsVec3 origin = YsVec3::Origin();
        if(normal.GetSquareLength() > YsTolerance)
        {
            double len = normal.GetLength();
            origin = normal * (-clipMatrix[15] - clipMatrix[14]) / len;
            frustum.planes[4].Set(origin, normal);
        }
        else
        {
            frustum.planes[4].Set(origin, YsVec3(0.0, 0.0, 1.0));
        }
    }

    // Far plane
    {
        YsVec3 normal(clipMatrix[3] - clipMatrix[2],
                      clipMatrix[7] - clipMatrix[6],
                      clipMatrix[11] - clipMatrix[10]);
        YsVec3 origin = YsVec3::Origin();
        if(normal.GetSquareLength() > YsTolerance)
        {
            double len = normal.GetLength();
            origin = normal * (-clipMatrix[15] + clipMatrix[14]) / len;
            frustum.planes[5].Set(origin, normal);
        }
        else
        {
            frustum.planes[5].Set(origin, YsVec3(0.0, 0.0, 1.0));
        }
    }

    return frustum;
}

double FsCullingUtil::DistanceToPlane(const YsPlane &plane, const YsVec3 &point)
{
    const YsVec3 &normal = plane.GetNormal();
    const YsVec3 &origin = plane.GetOrigin();

    // Plane equation: ax + by + cz + d = 0, where (a,b,c) is the normal
    // and d = -(a*x0 + b*y0 + c*z0) for a point (x0,y0,z0) on the plane

    double a = normal.x();
    double b = normal.y();
    double c = normal.z();
    double d = -(normal * origin);

    // Calculate signed distance from point to plane
    // Adding a small epsilon (5000) to make culling less aggressive
    double distance = a * point.x() + b * point.y() + c * point.z() + d;

    //if(distance < 500) {
    //  distance += 5000;
    //}
    distance += 13000;

    return distance;
}

YSBOOL FsCullingUtil::IsPointVisible(const Frustum &frustum, const YsVec3 &point)
{
    for (int i = 0; i < 6; i++) {
        if (DistanceToPlane(frustum.planes[i], point) < 0) {
            return YSFALSE;
        }
    }
    return YSTRUE;
}

YSBOOL FsCullingUtil::IsSphereVisible(const Frustum &frustum, const YsVec3 &center, const double radius)
{
    // Check against each frustum plane
    for (int i = 0; i < 6; i++) {
        // Only cull if fully outside the frustum
        if (DistanceToPlane(frustum.planes[i], center) < -radius) {
            return YSFALSE;
        }
    }
    return YSTRUE;
}

YSBOOL FsCullingUtil::IsBoundingBoxVisible(const Frustum &frustum, const YsVec3 bbx[2])
{
    // Test all 8 corners of the box
    YsVec3 corners[8];
    corners[0].Set(bbx[0].x(), bbx[0].y(), bbx[0].z());
    corners[1].Set(bbx[1].x(), bbx[0].y(), bbx[0].z());
    corners[2].Set(bbx[0].x(), bbx[1].y(), bbx[0].z());
    corners[3].Set(bbx[1].x(), bbx[1].y(), bbx[0].z());
    corners[4].Set(bbx[0].x(), bbx[0].y(), bbx[1].z());
    corners[5].Set(bbx[1].x(), bbx[0].y(), bbx[1].z());
    corners[6].Set(bbx[0].x(), bbx[1].y(), bbx[1].z());
    corners[7].Set(bbx[1].x(), bbx[1].y(), bbx[1].z());

    // For each plane, check if all points are outside
    for (int i = 0; i < 6; i++) {
        int outsideCount = 0;
        for (int j = 0; j < 8; j++) {
            if (DistanceToPlane(frustum.planes[i], corners[j]) < 0) {
                outsideCount++;
            }
        }

        // If all points are outside this plane, the box is not visible
        if (outsideCount == 8) {
            return YSFALSE;
        }
    }

    return YSTRUE;
}
