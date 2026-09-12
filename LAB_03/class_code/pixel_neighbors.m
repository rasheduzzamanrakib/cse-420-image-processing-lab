clc;
clear;

A=[1 2 3 4 5;
    6 7 8 9 10;
    11 12 13 14 15;
    16 17 18 19 20;
    21 22 23 24 25];

disp('image Matrix');
disp(A);

x=3;
y=3;

p=A(x,y);
fprintf('Selected Pixel = %d\n',p);

N4={A(x-1,y),A(x+1,y),A(x,y-1),A(x,y+1)};

ND=[A(x-1,y-1),A(x-1,y+1),A(x+1,y-1),A(x+1,y+1)];

N8=A(x-1:x+1,y-1:y+1);

disp('4-Neighbours');
disp(N4);

disp('Diagonal Neighbours');
disp(ND);

disp('8-Neighbours');
disp(N8);