% Video reader
%nouveau_killian.avi
%jellyfish_video.mp4
videoFile = 'world.mp4';
vidObj = VideoReader(videoFile);

% Créez un objet VideoWriter
%outputVideo = VideoWriter('res/jellyfish_video.mp4', 'MPEG-4');
outputVideo = VideoWriter('res/world', 'MPEG-4');
outputVideo.FrameRate = vidObj.FrameRate;
open(outputVideo);  

% Boucle pour écrire chaque image traitée dans la nouvelle vidéo
% Utilisez la même boucle que celle utilisée pour le traitement image par image
totalFrames = vidObj.NumFrames;
lastMultipleOf10 = 0;
for frameNumber = 1:totalFrames
    frame = readFrame(vidObj);
    
    % Image processing
    % grayFrame = rgb2gray(frame);
    processed_frame = hologramme_frame(frame);
    
    % Video reconstruction
    writeVideo(outputVideo, processed_frame);
    
    completionPercentage = (frameNumber / totalFrames) * 100;
    currentMultipleOf10 = floor(completionPercentage / 10);
    if currentMultipleOf10 > lastMultipleOf10
        fprintf('Progression : %d%%\n', currentMultipleOf10 * 10);
        lastMultipleOf10 = currentMultipleOf10;
    end
end

% Fermez la nouvelle vidéo
close(outputVideo);

