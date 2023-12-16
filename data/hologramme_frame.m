function output_frame = hologramme_frame(input_frame)

    % Charger l'image
    image_originale = input_frame;
    %Rotation depending on pyramide shape, to change if necessary
    %image_originale = imrotate(image_originale, 180, 'bilinear', 'crop');
    image_originale = square_format(image_originale);
    image_originale = house_format(image_originale);
    % Déterminer les dimensions de l'image d'origine
    [rows, cols, ~] = size(image_originale);
    
    % Créer une nouvelle image pour l'hologramme
    %mid_sqr_factor = 5.0/10;
    %middle_square = floor(max(mid_sqr_factor * rows, mid_sqr_factor * cols));
    nouvelles_rows = 2 * rows; % + middle_square;
    nouvelles_cols = 2 * cols; % + middle_square;
    image_hologramme = zeros(nouvelles_rows, nouvelles_cols, 3, 'uint8');
    
    
    % Placer l'image d'origine sur le côté du bas
    %image_hologramme(2*rows+1:3*rows, cols+1:2*cols, :) = image_originale; % Bas
    step_cols = floor((nouvelles_cols-cols)/2);
    image_hologramme(nouvelles_rows-rows+1:nouvelles_rows, step_cols:step_cols+cols-1, :) = ...
        image_hologramme(nouvelles_rows-rows+1:nouvelles_rows, step_cols:step_cols+cols-1, :) + image_originale;
    
    
    % Placer l'image d'origine sur le côté de droite avec rotation à 90 degrés
    %image_hologramme(rows+1:2*rows, 2*cols+1:3*cols, :) = imrotate(image_originale, 90, 'bilinear', 'crop'); % Droite
    step_rows = floor((nouvelles_rows-rows)/2);
    image_hologramme(step_rows:step_rows+rows-1, nouvelles_cols-cols+1:nouvelles_cols, :) = ...
        image_hologramme(step_rows:step_rows+rows-1, nouvelles_cols-cols+1:nouvelles_cols, :) + imrotate(image_originale, 90, 'bilinear', 'crop');
    
    
    % Placer l'image d'origine sur le côté du haut avec rotation à 180 degrés
    %image_hologramme(1:rows, cols+1:2*cols, :) = imrotate(image_originale, 180, 'bilinear', 'crop'); % Haut
    %step_cols = floor((nouvelles_cols-cols)/2);
    %image_hologramme(1:rows, step_cols-1:step_cols+cols-2, :) = ...
    %    image_hologramme(1:rows, step_cols-1:step_cols+cols-2, :) + imrotate(image_originale, 180, 'bilinear', 'crop');
    
    
    % Placer l'image d'origine sur le côté de gauche avec rotation à 270 degrés
    %image_hologramme(rows+1:2*rows, 1:cols, :) = imrotate(image_originale, 270, 'bilinear', 'crop'); % Gauche
    step_rows = floor((nouvelles_rows-rows)/2);
    image_hologramme(step_rows+1:step_rows+rows, 1:cols, :) = ...
        image_hologramme(step_rows+1:step_rows+rows, 1:cols, :) + imrotate(image_originale, 270, 'bilinear', 'crop');
   
    % Remplir le centre de l'image avec une zone noire
    mid_sqr_factor = 3.44/25.94;
    middle_square = floor(max(mid_sqr_factor * rows, mid_sqr_factor * cols));
    middle_square_half = round(middle_square/2);
    image_hologramme(rows+1-middle_square_half:rows+middle_square_half, cols+1-middle_square_half:cols+middle_square_half, :) = 0;


   output_frame = image_hologramme;
end