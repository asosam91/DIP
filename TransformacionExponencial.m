% Transformacion Exponencial

clear all
I = imread('imgs/mia.jpg');
whos I % Retorna metadata de la imagen en este caso
subplot(1,2,1); imshow(I);title('Original image')

%Transformacion Exponencial
G = imadjust(I,[],[],2);
subplot(1,2,2); imshow(G); title('Pow Transform')