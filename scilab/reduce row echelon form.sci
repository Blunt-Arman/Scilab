clc;
A = [2 -1 1  2;
     3  3 9 -1;
     3  3 5  4];

R = rref(A);

disp("Reduced Row Echelon Form (RREF):");
disp(R);
