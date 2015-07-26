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
     
        % get histogramm results
        [count, value] = imhist(Image);
        
        % calculate relative counts
        relCount = count/numel(Image);
        
        % calculate cumulative count
        cumCount = cumsum(relCount);
        
        % show absolute values
        subplot(2,2,2);
        plot(value, count);
        title("absolute count");
        xlabel("gray value");
        ylabel("count");
        axis([0 255]);
        
        % show relative frequency
        subplot(2,2,3);
        plot(value, relCount);
        title("relative count");
        xlabel("gray value");
        ylabel("relative count [%]");
        axis([0 255]);
        
        % show cumulative frequency
        subplot(2,2,4);
        plot(value, cumCount);
        title("cumulative count");
        xlabel("gray value");
        ylabel("cummulative count [%]");
        axis([0 255]);
end

% print out message
printf("\nEND OF SCRIPT\n");
