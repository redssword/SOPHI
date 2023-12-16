clear all;

imagePath = 'degrade_couleur.png'; 
img = imread(imagePath);

[rows, cols, ~] = size(img);


if(rows>cols)
    step = round((rows - cols)/2.0);
    cropBox = [0, step, cols, rows-(step*2)];
else
    step = round((cols - rows)/2.0);
    cropBox = [step, 0, cols-(step*2), rows];
end

croppedImg = imcrop(img, cropBox);
[crop_rows, crop_cols, ~] = size(croppedImg);

figure;
subplot(1, 2, 1);
imshow(img);
title('Image originale');

subplot(1, 2, 2);
imshow(croppedImg);
title('Image recadrée');

imwrite(croppedImg, 'image_recadree.jpg'); 
