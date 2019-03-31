clear;
clc;

I = imread('imgs/Fig0333.tif');%
[h1, w1]= size(I);%
tam = 50;

filtro = lpfilter('ideal', h1,w1,tam); % 'btw','gaussian', lpfilter se descarga de lpfilter.m en google

filtro1 = lpfilter('btw', h1,w1,tam); % 'btw','gaussian', lpfilter se descarga de lpfilter.m en google
 
filtro2= lpfilter('gaussian', h1,w1,tam); % 'btw','gaussian', lpfilter se descarga de lpfilter.m en google
 
[IF2, IF4, IH] = FFiltros(I, filtro);
[IF21, IF41, IH1] = FFiltros(I, filtro1);
[IF22, IF42, IH2] = FFiltros(I, filtro2);

colormap(gray);
subplot(4,2,1); imagesc(I); title('Original');
subplot(4,2,2); imagesc(log(abs(IF2)));title('Transformada');
subplot(4,2,3); mesh(IH),title('filtro ideal pasabajos');
subplot(4,2,4); imagesc(abs(IF4));title('Resultado');
subplot(4,2,5); mesh(IH1),title('filtro btw pasabajos');
subplot(4,2,6); imagesc(abs(IF41));title('Resultado');
subplot(4,2,7); mesh(IH2),title('filtro gaussian pasabajos');
subplot(4,2,8); imagesc(abs(IF42));title('Resultado');
