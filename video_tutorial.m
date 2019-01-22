clc;
%clear all;

%v = VideoReader('cats.mp4');
%cat_video = read(v); %this is not recommended for large video files

size(cat_video)

%imshow(cat_video(:,:,:,10))
% currAxes = axes;
% while hasFrame(v)
%     video_frame = readFrame(v);
%     image(video_frame, 'Parent', currAxes);
%     %imshow(vidFrame) %this function is not efficient but works
%     pause(1/v.FrameRate);
% end



v = VideoWriter('peaks.avi');
open(v);

t = 0:0.1:10;
for k = 1:20
   plot(sin(k*t))
   frame = getframe(gcf);
   writeVideo(v,frame);
end

close(v);