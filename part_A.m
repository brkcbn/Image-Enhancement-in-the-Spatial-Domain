
a=imread('A.tif');
a1=imread('A1.tif');
a2=imread('A2.tif');
a3=imread('A3.tif');

%Given Images

subplot(4,4,1), imshow(a), title('A');
subplot(4,4,2), imshow(a1), title('A1');
subplot(4,4,3), imshow(a2), title('A2');
subplot(4,4,4), imshow(a3), title('A3');

%Given Images' Histograms

subplot(4,4,5), imhist(a), title('Histogram of the Original Image');
subplot(4,4,6), imhist(a1), title('Histogram of the Image A1');
subplot(4,4,7), imhist(a2), title('Histogram of the Image A2');
subplot(4,4,8), imhist(a3), title('Histogram of the Image A3');

%Applied Functions to Obtain

a1_2=255-a;
subplot(4,4,10);
imshow(a1_2);
title('Negative of the Image');

a2_2=a/6+215;
subplot(4,4,11);
imshow(a2_2);
title('Arithmetic Operations Applied Image');

a3_2=histeq(a);
subplot(4,4,12);
imshow(a3_2);
title('Histogram Equalization Applied Image');

%After Applied Funtions to Images Histograms

subplot(4,4,14), imhist(a1_2), title('Histogram of the Image A1');
subplot(4,4,15), imhist(a2_2), title('Histogram of the Image A2');
subplot(4,4,16), imhist(a3_2), title('Histogram of the Image A3');