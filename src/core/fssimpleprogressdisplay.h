#ifndef FSSIMPLEPROGRESSDISPLAY_IS_INCLUDED
#define FSSIMPLEPROGRESSDISPLAY_IS_INCLUDED

#include <ysclass.h>
#include <ysbitmap.h>

class FsSimpleProgressDisplay
{
private:
    YsWString currentText;
    YsWString progressText;
    YsWString currentFileName;
    int currentStep;
    int totalSteps;
    YSBOOL isVisible;
    YsArray<YsWString> failedFiles;
    YsBitmap logoBmp;
    unsigned int logoTexture;
    YSBOOL logoLoaded;
    
public:
    FsSimpleProgressDisplay();
    virtual ~FsSimpleProgressDisplay();
    
    void Show(const wchar_t title[]);
    void Hide();
    
    void SetProgress(int current, int total, const wchar_t description[]);
    void SetCurrentFile(const wchar_t filename[]);
    void AddFailedFile(const wchar_t filename[]);
    void ShowFailedFiles();
    void Draw();
    
    YSBOOL IsVisible() const;
};

extern FsSimpleProgressDisplay fsSimpleProgress;

#endif