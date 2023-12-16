% Définir les dimensions de l'image
largeur = 300;
hauteur = 900;

% Créer une matrice de dégradé de couleur
gradient = linspace(0, 1, hauteur); % Créer un vecteur allant de 0 à 1
image = repmat(gradient', 1, largeur); % Répéter le vecteur pour former une matrice

% Appliquer les couleurs (rouge à bleu)
image(:, :, 1) = image; % Composante rouge
image(:, :, 2) = zeros(hauteur, largeur); % Composante verte (0)
image(:, :, 3) = 1 - image(:, :, 1); % Composante bleue

% Afficher l'image
imshow(image);

% Enregistrer l'image au format PNG
imwrite(image, 'degrade_couleur.png');
