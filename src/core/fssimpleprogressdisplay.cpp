#include "fssimpleprogressdisplay.h"
#include "graphics/common/fsopengl.h"
#include "graphics/common/fsfontrenderer.h"
#include "platform/common/fswindow.h"
#include <fssimplewindow.h>
#include <stdio.h>

FsSimpleProgressDisplay fsSimpleProgress;

FsSimpleProgressDisplay::FsSimpleProgressDisplay()
{
    currentStep = 0;
    totalSteps = 0;
    isVisible = YSFALSE;
    currentFileName.Set(L"");
    failedFiles.Clear();
}

FsSimpleProgressDisplay::~FsSimpleProgressDisplay()
{
}

void FsSimpleProgressDisplay::Show(const wchar_t title[])
{
    printf("DEBUG: FsSimpleProgressDisplay::Show called\n");
    isVisible = YSTRUE;
    currentText.Set(title);
    progressText.Set(L"Initializing...");
    currentFileName.Set(L"");
    currentStep = 0;
    totalSteps = 1;
    failedFiles.Clear();
}

void FsSimpleProgressDisplay::Hide()
{
    printf("DEBUG: FsSimpleProgressDisplay::Hide called\n");
    isVisible = YSFALSE;
}

void FsSimpleProgressDisplay::SetProgress(int current, int total, const wchar_t description[])
{
    printf("DEBUG: FsSimpleProgressDisplay::SetProgress %d/%d: %ls\n", current, total, description);
    currentStep = current;
    totalSteps = total;
    
    YsWString newText;
    newText.Set(L"Loading: ");
    newText.Append(description);
    progressText.Set(newText);
    currentFileName.Set(L"");
}

void FsSimpleProgressDisplay::SetCurrentFile(const wchar_t filename[])
{
    printf("DEBUG: FsSimpleProgressDisplay::SetCurrentFile: %ls\n", filename);
    currentFileName.Set(filename);
}

void FsSimpleProgressDisplay::AddFailedFile(const wchar_t filename[])
{
    printf("DEBUG: FsSimpleProgressDisplay::AddFailedFile: %ls\n", filename);
    failedFiles.Append(YsWString(filename));
}

void FsSimpleProgressDisplay::ShowFailedFiles()
{
    if (failedFiles.GetN() > 0)
    {
        printf("DEBUG: Showing %d failed files\n", (int)failedFiles.GetN());
        
        YsWString message;
        message.Set(L"The following asset files failed to load:\n\n");
        
        for (YSSIZE_T i = 0; i < failedFiles.GetN() && i < 15; i++)
        {
            message.Append(failedFiles[i]);
            message.Append(L"\n");
        }
        
        if (failedFiles.GetN() > 15)
        {
            YsString moreStr;
            moreStr.Printf("\n... and %d more files", (int)(failedFiles.GetN() - 15));
            
            YsWString moreText;
            moreText.SetUTF8String(moreStr);
            message.Append(moreText);
        }
        
        // Convert to char for simple display
        YsString messageStr;
        messageStr.EncodeUTF8<wchar_t>(message);
        printf("Asset Loading Errors:\n%s\n", messageStr.Txt());
        
        // TODO: Could show this in a proper dialog here
    }
}

void FsSimpleProgressDisplay::Draw()
{
    if(YSFALSE == isVisible)
    {
        return;
    }
    
    int winWid, winHei;
    FsGetWindowSize(winWid, winHei);
    
    glPushMatrix();
    glLoadIdentity();
    
    // Set up 2D projection
    glMatrixMode(GL_PROJECTION);
    glPushMatrix();
    glLoadIdentity();
    glOrtho(0, winWid, winHei, 0, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    
    // Disable depth testing for overlay
    glDisable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    
    // Draw semi-transparent background
    glColor4f(0.0f, 0.0f, 0.0f, 0.7f);
    glBegin(GL_QUADS);
    glVertex2f(0, 0);
    glVertex2f(winWid, 0);
    glVertex2f(winWid, winHei);
    glVertex2f(0, winHei);
    glEnd();
    
    // Calculate dialog position (center of screen)
    int dialogW = 500;
    int dialogH = 160;
    int dialogX = (winWid - dialogW) / 2;
    int dialogY = (winHei - dialogH) / 2;
    
    // Draw dialog background
    glColor4f(0.9f, 0.9f, 0.9f, 0.95f);
    glBegin(GL_QUADS);
    glVertex2f(dialogX, dialogY);
    glVertex2f(dialogX + dialogW, dialogY);
    glVertex2f(dialogX + dialogW, dialogY + dialogH);
    glVertex2f(dialogX, dialogY + dialogH);
    glEnd();
    
    // Draw aircraft icon (simple airplane shape)
    int iconX = dialogX + 20;
    int iconY = dialogY + 15;
    int iconSize = 24;
    
    glColor4f(0.2f, 0.4f, 0.8f, 1.0f);
    glLineWidth(3.0f);
    glBegin(GL_LINE_STRIP);
    // Simple airplane outline
    glVertex2f(iconX + iconSize/2, iconY);                    // nose
    glVertex2f(iconX + iconSize/2, iconY + iconSize*0.7f);    // body
    glVertex2f(iconX, iconY + iconSize*0.5f);                 // left wing
    glVertex2f(iconX + iconSize/2, iconY + iconSize*0.7f);    // back to body
    glVertex2f(iconX + iconSize, iconY + iconSize*0.5f);      // right wing
    glVertex2f(iconX + iconSize/2, iconY + iconSize*0.7f);    // back to body
    glVertex2f(iconX + iconSize*0.3f, iconY + iconSize);      // left tail
    glVertex2f(iconX + iconSize/2, iconY + iconSize*0.7f);    // back to body
    glVertex2f(iconX + iconSize*0.7f, iconY + iconSize);      // right tail
    glEnd();
    
    // Draw dialog border
    glColor4f(0.3f, 0.3f, 0.3f, 1.0f);
    glLineWidth(2.0f);
    glBegin(GL_LINE_LOOP);
    glVertex2f(dialogX, dialogY);
    glVertex2f(dialogX + dialogW, dialogY);
    glVertex2f(dialogX + dialogW, dialogY + dialogH);
    glVertex2f(dialogX, dialogY + dialogH);
    glEnd();
    
    // Draw progress bar background
    int barX = dialogX + 20;
    int barY = dialogY + 110;
    int barW = dialogW - 40;
    int barH = 20;
    
    glColor4f(0.9f, 0.9f, 0.9f, 1.0f);
    glBegin(GL_QUADS);
    glVertex2f(barX, barY);
    glVertex2f(barX + barW, barY);
    glVertex2f(barX + barW, barY + barH);
    glVertex2f(barX, barY + barH);
    glEnd();
    
    // Draw progress bar fill
    if(totalSteps > 0)
    {
        float progress = (float)(currentStep + 1) / (float)totalSteps;
        int fillW = (int)(barW * progress);
        
        glColor4f(0.2f, 0.6f, 0.2f, 1.0f);
        glBegin(GL_QUADS);
        glVertex2f(barX, barY);
        glVertex2f(barX + fillW, barY);
        glVertex2f(barX + fillW, barY + barH);
        glVertex2f(barX, barY + barH);
        glEnd();
    }
    
    // Draw progress bar border
    glColor4f(0.3f, 0.3f, 0.3f, 1.0f);
    glLineWidth(1.0f);
    glBegin(GL_LINE_LOOP);
    glVertex2f(barX, barY);
    glVertex2f(barX + barW, barY);
    glVertex2f(barX + barW, barY + barH);
    glVertex2f(barX, barY + barH);
    glEnd();
    
    // Draw text using simple raster positioning
    glColor4f(0.1f, 0.1f, 0.1f, 1.0f);
    
    // Convert wide strings to ASCII for simple rendering
    YsString titleStr, progressStr, currentFileStr, percentStr;
    titleStr.EncodeUTF8<wchar_t>(currentText);
    progressStr.EncodeUTF8<wchar_t>(progressText);
    currentFileStr.EncodeUTF8<wchar_t>(currentFileName);
    
    if(totalSteps > 0)
    {
        int percent = ((currentStep + 1) * 100) / totalSteps;
        percentStr.Printf("%d/%d (%d%%)", currentStep + 1, totalSteps, percent);
    }
    else
    {
        percentStr.Set("0%");
    }
    
    // Print debug info to console since OpenGL text rendering is complex
    printf("Progress: %s | %s", titleStr.Txt(), progressStr.Txt());
    if(currentFileStr.Strlen() > 0)
    {
        printf(" | Current: %s", currentFileStr.Txt());
    }
    printf(" | %s\n", percentStr.Txt());
    
    // Restore GL state
    glEnable(GL_DEPTH_TEST);
    glDisable(GL_BLEND);
    
    glMatrixMode(GL_PROJECTION);
    glPopMatrix();
    glMatrixMode(GL_MODELVIEW);
    glPopMatrix();
    
    // Swap buffers to show the progress
    FsSwapBuffers();
}

YSBOOL FsSimpleProgressDisplay::IsVisible() const
{
    return isVisible;
}