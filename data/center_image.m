% Charger l'image
image = imread('Ampoule.jpg');

% Obtenir les dimensions de l'image
[hauteur, largeur, ~] = size(image);

% Calculer le nombre de colonnes noires à ajouter de chaque côté
nombre_colonnes_a_ajouter = abs(hauteur - largeur) / 2;

% Ajouter des colonnes de pixels noirs à gauche et à droite de l'image
if hauteur > largeur
    image = [zeros(hauteur, nombre_colonnes_a_ajouter, 3), image, zeros(hauteur, nombre_colonnes_a_ajouter, 3)];
else
    image = [zeros(hauteur, largeur, 3), image, zeros(hauteur, largeur, 3)];
end

% Afficher l'image résultante
imshow(image);

imwrite(image, "Ampoule_center.jpg");
