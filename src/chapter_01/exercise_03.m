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
     
        % get histogramm results and do some calculations
        [count, value] = imhist(Image);
        
        relCount = count/numel(Image);    % calculate relative counts
        cumCount = cumsum(relCount);      % calculate cumulative count
        
        grayMean   = mean2(Image);        % calculate mean (2D)
        grayStdDev = std2(Image);         % calculate standard deviation (2D)
        
        % show absolute values
        subplot(2,2,2);
        hold on;
        plot(value, count);
        line([grayMean grayMean], [0 max(count)/8], "Linewidth", 1, "Color", [1 0 0]);
        line([(grayMean-grayStdDev) (grayMean+grayStdDev)], [(max(count)/8) (max(count)/8)], "Linewidth", 1, "Color", [1 0 1]);
        hold off;
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