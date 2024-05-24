% Chemin de la vidéo d'entrée
videoInputPath = 'rubikscude_image_noire.mp4'; % Spécifiez le chemin de votre vidéo

% Chemin de la vidéo de sortie
videoOutputPath = 'rubikscude_image_noire_recadree.mp4'; % Spécifiez le chemin où vous voulez sauvegarder la vidéo recadrée

% Nombre de pixels pour le recadrage
cropSize = 1300; % Spécifiez le nombre de pixels pour le recadrage (largeur et hauteur)

% Créer un objet VideoReader pour lire la vidéo
videoReader = VideoReader(videoInputPath);

% Créer un objet VideoWriter pour écrire la vidéo recadrée
videoWriter = VideoWriter(videoOutputPath, 'MPEG-4');
videoWriter.FrameRate = videoReader.FrameRate;

% Ouvrir l'objet VideoWriter
open(videoWriter);

% Lire et traiter chaque frame de la vidéo
while hasFrame(videoReader)
    frame = readFrame(videoReader);
    
    % Dimensions de la frame
    [rows, cols, channels] = size(frame);
    
    % Coordonnées du centre de la frame
    centerX = round(cols / 2);
    centerY = round(rows / 2);
    
    % Coordonnées de la zone de recadrage
    halfCropSize = round(cropSize / 2);
    xStart = centerX - halfCropSize;
    xEnd = centerX + halfCropSize - 1;
    yStart = centerY - halfCropSize;
    yEnd = centerY + halfCropSize - 1;
    
    % Créer une nouvelle frame noire de la taille de recadrage
    croppedFrame = zeros(cropSize, cropSize, channels, 'uint8');
    
    % Calculer les coordonnées de la zone à copier
    xStartCopy = max(1, xStart);
    xEndCopy = min(cols, xEnd);
    yStartCopy = max(1, yStart);
    yEndCopy = min(rows, yEnd);
    
    % Calculer les coordonnées de la zone cible dans la frame recadrée
    xStartTarget = xStartCopy - xStart + 1;
    yStartTarget = yStartCopy - yStart + 1;
    
    % Copier les pixels de la frame originale vers la nouvelle frame
    croppedFrame(yStartTarget:yStartTarget + (yEndCopy - yStartCopy), ...
                 xStartTarget:xStartTarget + (xEndCopy - xStartCopy), :) = ...
                 frame(yStartCopy:yEndCopy, xStartCopy:xEndCopy, :);
    
    % Écrire la frame recadrée dans la nouvelle vidéo
    writeVideo(videoWriter, croppedFrame);
end

% Fermer l'objet VideoWriter
close(videoWriter);

disp('Vidéo recadrée et sauvegardée avec succès.');
