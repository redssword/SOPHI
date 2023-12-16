% Dimensions de l'image
height = 600;
width = 1000;

% Créer une image bruitée
noisyImage = uint8(randi([0, 255], height, width, 3));

% Coordonnées du carré blanc
squareSize = 100;
squareX = floor((width - squareSize) / 2) + 1;
squareY = floor((height - squareSize) / 2) + 1;

% Remplacer la région du carré par une zone blanche
noisyImage(squareY:squareY + squareSize - 1, squareX:squareX + squareSize - 1, :) = 255;

% Afficher l'image bruitée
imshow(noisyImage);

% Sauvegarder l'image si nécessaire
imwrite(noisyImage, 'image_bruitee.jpg'); % Remplacez le chemin de sortie si nécessaire
