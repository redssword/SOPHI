function image_out = square_format(image_in)

    [rows, cols, ~] = size(image_in);
    
    if(rows>cols)
        step = round((rows - cols)/2.0);
        cropBox = [0, step, cols, rows-(step*2)];
    else
        step = round((cols - rows)/2.0);
        cropBox = [step, 0, cols-(step*2), rows];
    end
    
    image_out = imcrop(image_in, cropBox);
end