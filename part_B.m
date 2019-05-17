
b=imread('B.tif');
b_original=imread('B_original.tif');

subplot(2,3,1)
imshow(b)
title('B.tif')

subplot(2,3,2)
medb=medfilt2(b, [3 3]);
imshow(medb);
title('Median Filtered Image')

histeqb=histeq(medb);
subplot(2,3,3);
imshow(histeqb);
title('Histogram Equalized Image');

sharpened=imsharpen(histeqb, 'Radius', 2, 'Amount', 1);
subplot(2,3,4.5);
imshow(sharpened);
title('Sharpened Image');

subplot(2,3,5.5)
imshow(b_original);
title('Original Image');