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
        
        % create the reduced images
        Image8bit = Image;
        Image6bit = floor(Image8bit/4)*4;
        Image4bit = floor(Image8bit/16)*16;
        Image2bit = floor(Image8bit/64)*64;

        % show the images
        figure(1);
        
        subplot(4,2,1);
        imshow(Image8bit);
        title("Original Image (8 bit)");
     
        subplot(4,2,3);
        imshow(Image6bit);
        title("6 bit Image");
        
        subplot(4,2,5);
        imshow(Image4bit);
        title("6 bit Image");
        
        subplot(4,2,7);
        imshow(Image2bit);
        title("2 bit Image");
        
        % get histograms
        hist8bit = imhist(Image8bit);
        hist6bit = imhist(Image6bit);
        hist4bit = imhist(Image4bit);
        hist2bit = imhist(Image2bit);
        
        % show the differences by histogram
        subplot(4,2,2);
        plot(hist8bit);
        axis([0 255]);
        title("8 bit histogram");
        
        subplot(4,2,4);
        plot(hist6bit);
        axis([0 255]);
        title("6 bit histogram");
        
        subplot(4,2,6);
        plot(hist4bit);
        axis([0 255]);
        title("4 bit histogram");
        
        subplot(4,2,8);
        plot(hist2bit);
        axis([0 255]);
        title("2 bit histogram");
end

% print out message
printf("\nEND OF SCRIPT\n");