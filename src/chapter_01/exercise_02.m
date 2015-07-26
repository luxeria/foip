% clean up the environment
clear 'all'	% deleta all variables
close 'all'	% close all windows

% load the needed packages
pkg load image

% print out message
printf("\nSTART OF SCRIPT\n");

% check for the grayscale image
imageSource = "building_gray.jpg";
imageExists = exist(imageSource);

if !imageExists
        error("Image not found! Did you solve exercise 1?");
else
        % load the image
        Image = imread(imageSource);

        % show the image
        figure(1);
        subplot(2,2,1);
        imshow(Image);
        title("Original Image");
        
        % get the size of the image
        [sy, sx] = size(Image);
        
        % define pixel lines to read from
        redLine   = floor(1*sy/10);
        greenLine = floor(5*sy/10);
        blueLine  = floor(9*sy/10);
        
        % draw lines on image
        line([0 sx], [redLine redLine], "Linewidth", 1, "Color", [1 0 0]);
        text(sx+1, redLine, "red line");
        
        line([0 sx], [greenLine greenLine], "Linewidth", 1, "Color", [0 1 0]);
        text(sx+1, greenLine, "green line");
        
        line([0 sx], [blueLine blueLine], "Linewidth", 1, "Color", [0 0 1]);
        text(sx+1, blueLine, "blue line");
        
        % extract pixel data
        redPixels   = Image(redLine,:);
        greenPixels = Image(greenLine,:);
        bluePixels  = Image(blueLine,:);
        
        % plot pixel data
        subplot(2,2,2);
        plot(redPixels, 'r');
        title("red line");
        
        subplot(2,2,3);
        plot(greenPixels, 'g');
        title("green line");
        
        subplot(2,2,4);
        plot(bluePixels, 'b');
        title("blue line");    
end

% print out message
printf("\nEND OF SCRIPT\n");
