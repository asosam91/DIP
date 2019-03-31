I = imread('imgs/mia.jpg');
whos I
subplot(3,1,1); imshow(I); title('Imagen Original');

%Generacion de histograma
subplot(3,1,2); imhist(I); title('Histograma original');

% L = 256 wich means uint8
%figure; histeq(I, 256); title('Histograma Normalizado'); %esto da una grafica vacia noma spor que si XD
subplot(3,1,3); imhist(histeq(I, 256)); title('Histograma Normalizado');