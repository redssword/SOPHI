% Chemin de la vidéo d'entrée (.mp4)
inputVideoFile = 'killian.mp4';

% Chemin de la vidéo de sortie (.avi)
outputVideoFile = 'killian.avi';

try
    % Lecture de la vidéo d'entrée
    videoReader = VideoReader(inputVideoFile);
    
    % Paramètres pour la vidéo de sortie
    outputVideoFormat = 'Motion JPEG AVI'; % Format de compression
    outputFrameRate = videoReader.FrameRate; % Même frame rate que la vidéo d'entrée
    
    % Création de la vidéo de sortie
    videoWriter = VideoWriter(outputVideoFile, outputVideoFormat);
    videoWriter.FrameRate = outputFrameRate;
    videoWriter.Quality = 90; % Qualité de compression
    
    % Ouvrir la vidéo de sortie
    open(videoWriter);
    
    % Conversion de chaque image de la vidéo d'entrée
    while hasFrame(videoReader)
        frame = readFrame(videoReader);
        writeVideo(videoWriter, frame);
    end
    
    % Fermer la vidéo de sortie
    close(videoWriter);
    
    disp('Conversion terminée avec succès.');
catch ME
    % Gestion des erreurs
    disp('Une erreur s''est produite lors de la conversion:');
    disp(ME.message);
end
