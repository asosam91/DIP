%implementacion
I = imread('imgs/Fig1038.tif');
level = graythresh(I);
BW = imbinarize(I, level);
imshowpair(I,BW,'montage');