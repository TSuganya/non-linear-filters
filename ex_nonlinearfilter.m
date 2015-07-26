I=imread('..\images\noisy.png');
if (length(size(I))==3)
    I=rgb2gray(I);
end

subplot(2,4,1);imshow(I);
subplot(2,4,5);h=histogram(I);plot(h);

J=minfilter(I);
subplot(2,4,2);imshow(J);
subplot(2,4,6);h=histogram(J);plot(h);

K=maxfilter(I);
subplot(2,4,3);imshow(K);
subplot(2,4,7);h=histogram(K);plot(h);

L=medianfilter(I);
subplot(2,4,4);imshow(L);
subplot(2,4,8);h=histogram(L);plot(h);
