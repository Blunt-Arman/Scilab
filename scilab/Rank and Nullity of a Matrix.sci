clc;
A = [1 2 3;
     4 5 6;
     7 8 9];

disp("Matrix A:");
disp(A);
r = rank(A);
[nrows, ncols] = size(A);
nullity = ncols - r;
disp("Rank of the matrix:");
disp(r);
disp("Nullity of the matrix:");
disp(nullity);
