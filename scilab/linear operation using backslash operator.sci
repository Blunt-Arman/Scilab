clc
A = [2  -1   1;
     3   3   9;
     3   3   5];

B = [2; -1; 4];

X = A \ B;

disp("Solution of the system (x, y, z):");
disp(X);
