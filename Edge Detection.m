
% PROGRAM FOR EDGE DETECTION USING SOBEL,PREWITT,ROBERTS OPERATORS %

clc;
clear all;
clf;

figure(1)
subplot(4,3,2);
a=imread('circuit.tif');
imshow(a)
title('INPUT IMAGE')

%sobel operator
bx=[-1 -2 -1;0 0 0;1 2 1];
by=[-1 0 1;-2 0 2;-1 0 1];
subplot(4,3,4);
sx=conv2(a,bx);
imshow(sx)
title('SX')


subplot(4,3,5);
sy=conv2(a,by);
imshow(sy)
title('SY')

s=sx+sy;
subplot(4,3,6);
imshow(s)
title('SOBEL OUTPUT')

%prewitt operator
cx=[-1 -1 -1;0 0 0;1 1 1];
cy=[-1 0 1;-1 0 1;-1 0 1];
subplot(4,3,7);
px=conv2(a,cx);
imshow(px)
title('PX')

subplot(4,3,8);
py=conv2(a,cy);
imshow(py)
title('PY')

subplot(4,3,9);
p=px+py;
imshow(p)
title('PREWITT OUTPUT')

%robert operator
dx=[-1 0;0 1];
dy=[0 -1;1 0];
subplot(4,3,10);
rx=conv2(a,dx);
imshow(rx)
title('RX')

subplot(4,3,11);
ry=conv2(a,dy);
imshow(ry)
title('RY')

subplot(4,3,12);
r=rx+ry;
imshow(r)
title('ROBERT OUTPUT')