#include <stdio.h>
#include <stdlib.h>
#define _WIN32_WINNT 0x0A00
#include <windows.h>

int main()
{
    HWND hwnd = GetConsoleWindow();
    HDC dc =GetDC (hwnd);

    SelectObject (dc, GetStockObject(DC_BRUSH));
    SetDCBrushColor (dc, RGB(255,0,255));

    Rectangle (dc,10,10,110,110);
    Ellipse (dc,200,100,300,200);

    return 0;
}
