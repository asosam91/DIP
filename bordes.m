I = imread('imgs/mia.jpg');
[h, w] = size(I);% obtencion de las dimenciones
borde = ones(h,w);% creacion de la matriz d elos bordes
figure(1); subplot(2,2,1); imshow(I); title('Original image');
subplot(2,2,3); imhist(I); title('Image histogram');

%umbralizacion
for i = 1:h
    for j = 1:w
        val = I(i,j); %obtencion del valor del tono
        if (val > 127)
            borde(i,j) = 1;
        else
            borde(i,j) = 0;
        end
    end
end
subplot(2,2,2); imshow(borde); title('Edges');
subplot(2,2,4); imhist(borde); title('Edges histogram');