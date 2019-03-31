% filtros mediana

F = imread('imgs/Fig0335.tif');

figure(1);
subplot(3,1,1); imshow(F); title('Imagen Original');

%average smooting
fg1 = ordfilt2 (F,13, ones(5,5));
subplot(3,1,2); imshow(fg1); title('Imagen Suavisada');


fg2 = medfilt2(F,[5,5]);
subplot(3,1,3); imshow(fg2); title('Imagen Suavisada 2');