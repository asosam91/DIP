clear;
clc;

I = imread('imgs/Fig0333.tif');%
[h1, w1]= size(I);%
tam = 50;

filtro = lpfilter('ideal', h1,w1,tam); % 'btw','gaussian', lpfilter se descarga de lpfilter.m en google
filtroI = 1 - filtro; % integra los filtros 
filtro1 = lpfilter('btw', h1,w1,tam); % 'btw','gaussian', lpfilter se descarga de lpfilter.m en google
filtro2 = 1 - filtro1; % integra los filtros 
filtro4 = lpfilter('gaussian', h1,w1,tam); % 'btw','gaussian', lpfilter se descarga de lpfilter.m en google
filtro3 = 1 - filtro4; % integra los filtros 


[IF2, IF4, IH] = FFiltros(I, filtro);
[IF2, IF42, IH] = FFiltros(I, filtro1);
[IF2, IF43, IH] = FFiltros(I, filtro4);

colormap(gray);
subplot(4,2,1); imagesc(I); title('Original');
subplot(4,2,2); imagesc(log(abs(IF2)));title('Transformada');
subplot(4,2,3); mesh(filtroI),title('filtro ideal pasa altos');
subplot(4,2,4); imagesc(abs(IF4));title('Resultado');
subplot(4,2,5); mesh(filtro2),title('filtro btw pasa altos');
subplot(4,2,6); imagesc(abs(IF42));title('Resultado');
subplot(4,2,7); mesh(filtro3),title('filtro gaussian pasa altos');
subplot(4,2,8); imagesc(abs(IF43));title('Resultado');