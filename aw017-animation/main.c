#include <stdio.h>
#include <stdlib.h>
#define _WIN32_WINNT 0x0A00
#include <windows.h>

int main()
{
    HWND hwnd = GetConsoleWindow();
    HDC dc =GetDC (hwnd);

    int i=0;
    do
    {
    i++;
    SelectObject (dc, GetStockObject(DC_BRUSH));
    SetDCBrushColor (dc, RGB(255,255,255));
    SelectObject (dc, GetStockObject(DC_PEN));
    SetDCPenColor (dc, RGB(255,0,255));
    Rectangle (dc,0,0,640,300);

    SelectObject (dc, GetStockObject(DC_BRUSH));
    SetDCBrushColor (dc, RGB(0,255,0));

    Rectangle (dc,0+i,0,100+i,100);
    Sleep(10);
    }
    while (GetKeyState (VK_ESCAPE)>=0);
    return 0;
}
