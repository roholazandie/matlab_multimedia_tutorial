clc;
clear;

[y, Fs] = audioread('data/trains.mp3');

y_short = y_short(:,1); % selecting just one channel
T = 1/Fs;% Sampling period
L = length(y_short);
t = (0:L-1)*T;% Time vector

figure;
plot(t, y_short);
xlabel('Seconds');
ylabel('Y');

y_freq = fft(y_short);
y_freq_abs = abs(y_freq/L);


f = Fs*(0:(L/2))/L;
figure;
plot(y_freq_abs);
title('Single-Sided Amplitude Spectrum of Y')
xlabel('f (Hz)')
ylabel('|Y|')