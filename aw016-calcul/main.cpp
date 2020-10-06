#include <stdio.h>
#include <stdlib.h>
#define _WIN32_WINNT 0x0A00
#include <windows.h>

int main()
{
    HWND hwnd = FindWindow(NULL,"Калькулятор");
    HDC dc =GetDC (hwnd);

    SelectObject (dc, GetStockObject(DC_BRUSH));
    SetDCBrushColor (dc, RGB(255,0,255));

    Rectangle (dc,0,0,200,200);


    return 0;
}
