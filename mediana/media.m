f = imread('imgs/Fig0508.tif');

figure(1); subplot(2,2,1); imshow(f); title('Original image');

% se agrega ruido salt & pepper
fn = imnoise(f, 'salt & pepper', 0.2);
subplot(2,2,2); imshow(fn); title('Salt & Pepper noise');

% usando filtro de mediana
f1 = medfilt2(fn, [7,7], 'symmetric');
subplot(2,2,3); imshow(f1); title('Noise elimination with arithmetic medium');

% usando filtro de mediana adaptativo
f2 = adpmedian(fn, 7);
subplot(2,2,4); imshow(f2); title('noise elimination with adaptive median');  