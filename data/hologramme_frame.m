function output_frame = hologramme_frame(input_frame)

    Height = 1080;
    Width = 1920;
    
    mid_square_factor = 10/100;
    mid_square_heigth = round(mid_square_factor * Height);
    mid_square_width = round(mid_square_factor * Width);
    
    height_img = round(Height - mid_square_heigth)/2;
    width_img = round(Width - mid_square_width)/2;

    % Charger l'image
    image_originale = input_frame;
    %Rotation depending on pyramide shape, to change if necessary
    %image_originale = imrotate(image_originale, 180, 'bilinear', 'crop');
    image_originale = square_format(image_originale);
    image_originale = house_format(image_originale);
    % Déterminer les dimensions de l'image d'origine
    image_originale = imresize(image_originale, [height_img, height_img]);
    [height_img, width_img, ~] = size(image_originale);
    
    % Créer une nouvelle image pour l'hologramme
    image_hologramme = zeros(Height, Width, 3, 'uint8');
    
    row_offset = 200;
    col_offset = 400;
    
    % Placer l'image d'origine sur le côté de droite avec rotation à 90 degrés
    %image_hologramme(rows+1:2*rows, 2*cols+1:3*cols, :) = imrotate(image_originale, 90, 'bilinear', 'crop'); % Droite
    start_rows = (Height/2)-(width_img/2) + row_offset;
    end_rows = (Height/2)+(width_img/2) - 1 + row_offset;
    start_cols = Width-height_img - col_offset;
    end_cols = Width - col_offset;
    image_originale = imresize(image_originale, [end_rows-start_rows+1, end_cols-start_cols+1]);
    
    image_hologramme(start_rows:end_rows, start_cols:end_cols, :) = ...
        image_hologramme(start_rows:end_rows, start_cols:end_cols, :) + imrotate(image_originale, 90, 'bilinear', 'crop');
    
    
    % Placer l'image d'origine sur le côté de droite avec rotation à 270 degrés
    %image_hologramme(rows+1:2*rows, 2*cols+1:3*cols, :) = imrotate(image_originale, 270, 'bilinear', 'crop'); % Droite
    start_rows = (Height/2)-(width_img/2) + row_offset;
    end_rows = (Height/2)+(width_img/2) - 1 + row_offset;
    start_cols = 1 + col_offset;
    end_cols = height_img + 1 + col_offset;
    image_originale = imresize(image_originale, [end_rows-start_rows+1, end_cols-start_cols+1]);
    
    image_hologramme(start_rows:end_rows, start_cols:end_cols, :) = ...
        image_hologramme(start_rows:end_rows, start_cols:end_cols, :) + imrotate(image_originale, 270, 'bilinear', 'crop');
    
    % Placer l'image d'origine sur le côté de droite avec rotation à 180 degrés
    %image_hologramme(rows+1:2*rows, 2*cols+1:3*cols, :) = imrotate(image_originale, 180, 'bilinear', 'crop'); % Droite
   row_offset = 100;
    col_offset = 0;
    start_rows = 1 + row_offset;
    end_rows = height_img + 1 + row_offset;
    start_cols = (Width/2)-(width_img/2);
    end_cols = (Width/2)+(width_img/2) - 1;
    image_originale = imresize(image_originale, [end_rows-start_rows+1, end_cols-start_cols+1]);
    
    image_hologramme(start_rows:end_rows, start_cols:end_cols, :) = ...
        image_hologramme(start_rows:end_rows, start_cols:end_cols, :) + imrotate(image_originale, 180, 'bilinear', 'crop');


   output_frame = image_hologramme;
end