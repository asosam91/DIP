% Transformacion Lineal 

clear all
I = imread('imgs/mia.jpg');
whos I % Retorna metadata de la imagen en este caso
subplot(2,2,1); imshow(I);title('Original image')

%Transformacion Lineal
G = imadjust(I, [0,1],[1,0],0.1); % el 0.1 es el valor de gama, deve ser variado
subplot(2,2,2); imshow(G); title('Reverse Transform, Gamma = 0.1')

%gamma en 0.5
G = imadjust(I, [0,1],[1,0],0.5); % el 0.1 es el valor de gama, deve ser variado
subplot(2,2,3); imshow(G); title('Reverse Transform, Gamma = 0.5')

%gamma en 0.9
G = imadjust(I, [0,1],[1,0],0.9); % el 0.1 es el valor de gama, deve ser variado
subplot(2,2,4); imshow(G); title('Reverse Transform, Gamma = 0.9')
