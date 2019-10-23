[ImageData, map] = imread('lena.bmp'); 
lineSizw= size (ImageData,1); 
Npixels = size (ImageData,1) * size ( ImageData,2); 
grayScaleImage = 0; 
for I = 1 : lineSize
   for J = 1 : lineSize 
        pixel = double ( ImageData(I,J) ); 
        mapValue = map(pixel+1); 
        grayPixel = mapValue * 255; 
        grayScaleImage(I,J) = uint8(floor (grayPixel)); 
    end 
end 
%turn the array into a vector 
grayScaleSignal = reshape ( grayScaleImage, 1, NPixels); 
% insert a column of ‘time values’  
% block expects time followed by data on every row of the input 
grayScaleSignal = [ double(0 : Npixels-1)' double( grayScaleSignal)' ]; 
