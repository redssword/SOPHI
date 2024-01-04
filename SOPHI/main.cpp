//main here ?
#include<iostream>
#include"ImageNdg.h"

int main()
{
	CImageNdg img("res/crop.bmp");
	int rows = img.lireHauteur();
	int cols = img.lireLargeur();
	//img.crop(0, 0, rows/2, cols).sauvegarde("crop");
	img.square_format().sauvegarde("square_format");
	
	return 0;
}