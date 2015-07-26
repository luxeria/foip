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
        
        % create reduced images
        Image1 = Image;
        Image2 = imresize(Image1, 0.5);
        Image3 = imresize(Image2, 0.5);
        Image4 = imresize(Image3, 0.5);
        Image5 = imresize(Image4, 0.5);
        Image6 = imresize(Image5, 0.5);
        
        % get the image size
        [image1y image1x] = size(Image1);
        [image2y image2x] = size(Image2);
        [image3y image3x] = size(Image3);
        [image4y image4x] = size(Image4);
        [image5y image5x] = size(Image5);
        [image6y image6x] = size(Image6);

        % show the images
        figure(1);
        
        subplot(3,2,1);
        imshow(Image1)
        title(sprintf("%i x %i", image1x, image1y));
        
        subplot(3,2,2);
        imshow(Image2)
        title(sprintf("%i x %i", image2x, image2y));
        
        subplot(3,2,3);
        imshow(Image3)
        title(sprintf("%i x %i", image3x, image3y));
        
        subplot(3,2,4);
        imshow(Image4)
        title(sprintf("%i x %i", image4x, image4y));
        
        subplot(3,2,5);
        imshow(Image5)
        title(sprintf("%i x %i", image5x, image5y));
        
        subplot(3,2,6);
        imshow(Image6)
        title(sprintf("%i x %i", image6x, image6y));
        
end

% print out message
printf("\nEND OF SCRIPT\n");