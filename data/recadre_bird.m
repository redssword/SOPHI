% Chemin de la vidéo d'entrée
videoInputPath = 'bird_image_noire.mp4'; % Spécifiez le chemin de votre vidéo

% Chemin de la vidéo de sortie
videoOutputPath = 'bird_image_noire_recadree.mp4'; % Spécifiez le chemin où vous voulez sauvegarder la vidéo recadrée

% Nombre de colonnes à découper
numColsToCrop = 100; % Spécifiez le nombre de colonnes à découper à droite

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
    
    % Vérifier que le nombre de colonnes à découper n'est pas plus grand que le nombre total de colonnes de l'image
    [rows, cols, ~] = size(frame);
    if numColsToCrop > cols
        error('Le nombre de colonnes à découper est supérieur au nombre de colonnes de la vidéo.');
    end
    
    % Recadrer le frame
    croppedFrame = frame(:, 1:end-numColsToCrop, :);
    
    % Écrire le frame recadré dans la nouvelle vidéo
    writeVideo(videoWriter, croppedFrame);
end

% Fermer l'objet VideoWriter
close(videoWriter);

disp('Vidéo recadrée et sauvegardée avec succès.');
