I=imread('..\images\noisy.png');
if (length(size(I))==3)
    I=rgb2gray(I);
end

subplot(2,2,1);imshow(I);
subplot(2,2,2);h=histogram(I);plot(h);

J=medianfilter(I);
subplot(2,2,3);imshow(J);
subplot(2,2,4);h=histogram(J);plot(h);