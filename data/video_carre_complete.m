% Lire la vidéo d'entrée
videoFile = 'atom.mp4'; % Remplacez par le chemin de votre vidéo
videoReader = VideoReader(videoFile);

% Obtenir les dimensions de la vidéo
videoWidth = videoReader.Width;
videoHeight = videoReader.Height;

% Déterminer la taille de la nouvelle vidéo carrée
sideLength = max(videoWidth, videoHeight);

% Créer un objet VideoWriter pour la nouvelle vidéo
outputFile = 'atom_carre'; % Nom de la nouvelle vidéo
videoWriter = VideoWriter(outputFile, 'MPEG-4');
videoWriter.FrameRate = videoReader.FrameRate;
open(videoWriter);

% Traiter chaque frame de la vidéo
while hasFrame(videoReader)
    frame = readFrame(videoReader);
    
    % Créer une image carrée noire
    squareFrame = uint8(zeros(sideLength, sideLength, 3));
    
    % Calculer les positions pour centrer la frame d'origine
    xOffset = floor((sideLength - videoWidth) / 2);
    yOffset = floor((sideLength - videoHeight) / 2);
    
    % Placer la frame d'origine au centre de l'image carrée
    squareFrame(yOffset+1:yOffset+videoHeight, xOffset+1:xOffset+videoWidth, :) = frame;
    
    % Écrire la frame dans la nouvelle vidéo
    writeVideo(videoWriter, squareFrame);
end

% Fermer l'objet VideoWriter
close(videoWriter);

disp('La nouvelle vidéo carrée a été créée avec succès.');
