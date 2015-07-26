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
        
        % define look-up-table (LUT)
        LUT_inverse = uint8([255:-1:0]);
        LUT_bright  = uint8([0:255].*2);
        %LUT_dark    = uint8([0:255].*0.5);
        LUT_special = uint8(horzcat([0:1:64], [64:2:((255-64)*2+62)]));
        
        % apply LUTs
        ImageInverse = intlut(Image, LUT_inverse);
        ImageBright  = intlut(Image, LUT_bright);
        %ImageDark    = intlut(Image, LUT_dark);
        ImageSpecial = intlut(Image, LUT_special);
        
        % show images
        figure(1);
        
        subplot(2,2,1);
        imshow(Image);
        title("original image");
        
        subplot(2,2,2);
        imshow(ImageInverse);
        title("inverse LUT image");
        
        subplot(2,2,3);
        imshow(ImageBright);
        title("bright LUT image");
        
        subplot(2,2,4);
        imshow(ImageSpecial);
        title("special LUT image");
end

% print out message
printf("\nEND OF SCRIPT\n");