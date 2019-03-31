% filtros espaciales

F = imread('imgs/mia.jpg');

figure(1);
subplot(1,3,1); imshow(F); title('Imagen Original');

filter1 = fspecial('average',[3,3]);
fg1 = imfilter(F, filter1);
subplot(1,3,2); imshow(fg1); title('Imagen suavizada');


filter2 = fspecial('gaussian',[9,9]);
fg2 = imfilter(F, filter2);
subplot(1,3,3); imshow(fg2); title('Imagen gaussian');