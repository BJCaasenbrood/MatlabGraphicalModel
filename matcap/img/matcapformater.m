function matcapformater(inputFilename, outputFilename)
% Convert an image to a 512x512 jpg with a specified outname

% Read the input image file
inputImage = imread(inputFilename);

% Resize the image to 512x512
resizedImage = imresize(inputImage, [512 512]);

% Write the resized image to a new file
imwrite(resizedImage, outputFilename, 'jpg');
end