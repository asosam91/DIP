function [ F2, F4, H] = FFiltros(I, filtro)
	% transformada de fourier
	F = fft2(I);
	F2 = fftshift(F);
	H = fftshift(filtro);
	F3 = F2.*H; %% multiplicacion
	% inversa de la transformada
	F4 = ifftshift(F3);
	F4 = ifft2(F4);
end