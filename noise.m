f = imread('imgs/mia.jpg');
figure (1); subplot(2,2,1); imshow(f); title('Original image');

%se agrega filtro gaussiano
fn = imnoise(f, 'gaussian', 0.1,0.01);
subplot(2,2,2); imshow(fn); title('Gaussian noise');

% se agrega ruido con media de 0
fn = imnoise(f, 'localvar', 0.05*rand(size(f)));
subplot(2,2,3); imshow(fn); title('Image with noise');

% se agrega ruido salt & pepper
fn = imnoise(f, 'salt & pepper', 0.2);
subplot(2,2,4); imshow(fn); title('Salt & Pepper noise');