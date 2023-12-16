//main here ?
#include<iostream>
#include"ImageNdg.h"

int main()
{
	CImageNdg img("jellyfish_ndg_bmp.bmp"); //WIP
	img.transformation("complement").sauvegarde();

	return 0;
}