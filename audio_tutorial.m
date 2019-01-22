clc;
clear all;

[y, Fs] = audioread('trains.mp3');

%sound(y, Fs)
plot(y)

audio_length_in_sec = length(y)/Fs;

start_time = 5*Fs;
end_time = 10*Fs;
y_short = y(start_time:end_time, :);

% sound(y_short, Fs);
% 
% %audiowrite('train_short.wav', y_short, Fs);
% 
% y_short(:, 1)=0;
% sound(y_short, Fs)
% 
% y_short_reversed = y_short(end:-1:1, end:-1:1);
% sound(y_short_reversed, Fs)
% 
% white_noise = rand(length(y_short), 2)*0.1;
% y_noised = y_short + white_noise;
% sound(y_noised, Fs)
% 
% 
%sound(y_short, Fs/2) %low frequency
%sound(y_short, Fs*2) %high frequency
% 
% 
