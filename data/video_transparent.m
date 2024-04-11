% Charger la vidéo

video_name = 'killian.avi';
fond_name = 'image_noire.png';
cmd = "transparent-background --source " + video_name + " --dest video_ia --type " + fond_name + "--mode fast ";
%system('transparent-background --source killian.avi --dest killian_ia.avi --type image_noire.png --mode fast')

video = VideoReader('killian_ia.avi/killian_image_noire.mp4');

% Créer un lecteur vidéo pour parcourir les images
videoWriter = VideoWriter('nouveau_killian.avi', 'Uncompressed AVI');
videoWriter.FrameRate = video.FrameRate; % Assurez-vous que le FPS est le même
open(videoWriter);

% Séparer le son de la vidéo
audioFile = 'killian.avi'; % Chemin vers le fichier vidéo
[y, Fs] = audioread(audioFile);

% Convertir l'audio en double
y = double(y);
sound(y, Fs); % Jouer le son

% Parcourir chaque image de la vidéo
while hasFrame(video)
    frame = readFrame(video);
    
    % Écrire l'image dans la nouvelle vidéo
    writeVideo(videoWriter, frame);
end

% Fermer le lecteur de la nouvelle vidéo
close(videoWriter);
