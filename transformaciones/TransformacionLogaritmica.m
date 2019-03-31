% Transformacion logaritmica

clear all
I = imread('imgs/mia.jpg');
whos I % Retorna metadata de la imagen en este caso
subplot(1,2,1); imshow(I); title('Original Image')

%Transformacion logaritmica
G = log(1+double(I))
G = mat2gray(G)
subplot(1,2,2); imshow(G); title('Log Transform')