clear all
%leer una imagenes
I=imread('mia.jpg');
% convertir la imagen a escala de gris
Ig=rgb2gray(I);

% crear malla par amostrar imagenes
figure; subplot(2,1,1); imshow(I); title('Original image')

subplot(2,1,2); imshow(Ig); title('Gray image')

[X, map] = gray2ind(Ig, 2);
figure; subplot(2,2,1); imshow(X, map); title('2 niveles de gris')

[X, map] = gray2ind(Ig, 16);
subplot(2,2,2); imshow(X, map); title('16 niveles de gris')

[X, map] = gray2ind(Ig, 64);
subplot(2,2,3); imshow(X, map); title('64 niveles de gris')

%[X, map] = gray2ind(Ig, 128);
%subplot(3,3,6); imshow(X, map); title('128 niveles de gris')

[X, map] = gray2ind(Ig, 264);
subplot(2,2,4); imshow(X, map); title('256 niveles de gris')