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


% 1. 4-Neighbour
N4={A(x-1,y),A(x+1,y),A(x,y-1),A(x,y+1)};
disp('4-Neighbours');
disp(N4);


% 2. Diagonal Neighbour
ND=[A(x-1,y-1),A(x-1,y+1),A(x+1,y-1),A(x+1,y+1)];
disp('Diagonal Neighbours');
disp(ND);


% 3. 8-Neighbour
N8=A(x-1:x+1,y-1:y+1);
disp('8-Neighbours');
disp(N8);


% 4. Euclidean Distance
x2=5;
y2=5;
D=sqrt((x2-x)^2+(y2-y)^2);
fprintf('Euclidean Distance = %.2f\n',D);


% 5. City Block Distance
D=abs(x2-x)+abs(y2-y);
fprintf('City Block Distance = %d\n',D);


% 6. Chessboard Distance
D=max(abs(x2-x),abs(y2-y));
fprintf('Chessboard Distance = %d\n',D);