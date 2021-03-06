clc;
%clear;

%% read the video file
v = VideoReader('data/cats.mp4');
%cat_video = read(v); %this is not recommended for large video files

%% show the size of video
size(cat_video)

%% plot one frame
imshow(cat_video(:,:,:,10))

%% play the video frame by frame
while hasFrame(v)  %if you get error for hasFrame you have to rerun the script commenting out read(v)
    video_frame = readFrame(v);
    image(video_frame);
    %imshow(vidFrame) %this function is not efficient but works
    pause(1/v.FrameRate);
end


%% create an animation and write it to a video file
v = VideoWriter('data/peaks.avi');
open(v);

t = 0:0.1:10;
for k = 1:20
   plot(sin(k*t))
   frame = getframe(gcf);
   writeVideo(v,frame);
end

close(v);