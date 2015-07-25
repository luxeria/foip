% clean up the environment
clear 'all'	% deleta all variables
close 'all'	% close all windows

% print out message
printf("\nSTART OF SCRIPT\n");

% load the original image
imageSource = "../../data/building.jpg";
imageExists = exist(imageSource);
if !imageExists
        error("Image not found! Did you download the images with get_data.sh?");
else
ImageOrig = imread(imageSource);

% convert the RGB image to a grayscale image
ImageGray = rgb2gray(ImageOrig);

% show the two images
figure(1);		

subplot(1,2,1);
imshow(ImageOrig);
title("Original RGB Image");

subplot(1,2,2);
imshow(ImageGray);
title("Converted Grayscale Image");

% save the grayscale image
imwrite(ImageGray, "building_gray.jpg");

end

% print out message
printf("\nEND OF SCRIPT\n");
