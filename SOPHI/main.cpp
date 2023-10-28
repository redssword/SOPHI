//main here ?
#include<iostream>
#include"ImageNdg.h"

int main()
{
	CImageNdg img("chro.bmp");
	img.transformation("complement").seuillage("otsu").sauvegarde();

	return 0;
}