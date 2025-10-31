clc;
A = [2  -1   1;
     3   3   9;
     3   3   5];

b = [2; -1; 4];

disp("Matrix A:");
disp(A);
disp("Vector b:");
disp(b);

[L, U, P] = lu(A);

disp("Lower Triangular Matrix L:");
disp(L);
disp("Upper Triangular Matrix U:");
disp(U);
disp("Permutation Matrix P:");
disp(P);

y = L \ (P * b);

z = U \ y;

disp("Solution vector z (for Az = b):");
disp(z);

disp("Verification (A * z):");
disp(A * z);
disp("Should equal b:");
disp(b);
