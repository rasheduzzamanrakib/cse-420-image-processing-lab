clc;
clear;

A=[1 2 3 4 5;
6 7 8 9 10;
11 12 13 14 15;
16 17 18 19 20;
21 22 23 24 25];

disp('image matrix');
disp(A);

x=3;
y=3;
p=A(x,y);
fprintf('selected pixel = %d\n',p);


% 1. 4-neighbour
N4={A(x-1,y),A(x+1,y),A(x,y-1),A(x,y+1)};
disp('4-neighbours');
disp(N4);


% 2. diagonal neighbours
ND=[A(x-1,y-1),A(x-1,y+1),A(x+1,y-1),A(x+1,y+1)];
disp('diagonal neighbours');
disp(ND);


% 3. 8-neighbour
N8=A(x-1:x+1,y-1:y+1);
disp('8-neighbours');
disp(N8);


% 4. euclidean distance
x2=5;
y2=5;
D=sqrt((x2-x)^2+(y2-y)^2);
fprintf('euclidean distance = %.2f\n',D);


% 5. city block distance
D=abs(x2-x)+abs(y2-y);
fprintf('city block distance = %d\n',D);


% 6. chessboard distance
D=max(abs(x2-x),abs(y2-y));
fprintf('chessboard distance = %d\n',D);