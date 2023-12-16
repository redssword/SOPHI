% Charger votre image
image = imread('image_recadree.jpg');
image = square_format(image);
% Obtenez les dimensions de l'image
[rows, cols, ~] = size(image);

% Définissez les nouveaux points de vos droites
point1 = [1, cols/2];
point2 = [rows/2, cols];
point3 = [1, cols/2];
point4 = [rows/2, 1];

% Créez une matrice de masque initialement remplie de 1 (pour tout le domaine)
mask = ones(rows, cols, 'like', image);

% Créez les coefficients des équations de droite
m1 = (point2(1) - point1(1)) / (point2(2) - point1(2));
b1 = point1(1) - m1 * point1(2);
m2 = (point4(1) - point3(1)) / (point4(2) - point3(2));
b2 = point3(1) - m2 * point3(2);

% Remplissez la matrice de masque en utilisant les nouvelles équations de droite
for row = 1:rows
    for col = 1:cols
        if row >= (m1 * col + b1) && row >= (m2 * col + b2)
            mask(row, col) = 0; % Mettez à zéro les pixels au-dessus des deux nouvelles droites
        end
    end
end

% Appliquez le masque inversé à l'image (pour que les pixels au-dessus soient mis à zéro)
image_finale = image .* repmat(1 - mask, [1, 1, size(image, 3)]);
imwrite(image_finale, "image_bleue_house.jpg")
% Affichez l'image finale
imshow(image_finale);
