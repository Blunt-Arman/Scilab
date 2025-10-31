clc;
A = [1 1 0;
     1 0 1;
     0 1 1];

disp("Matrix A:");
disp(A);

[Q, R] = qr(A);

disp("Orthogonal matrix Q:");
disp(Q);

disp("Upper triangular matrix R:");
disp(R);

disp("Verification (Q * R):");
disp(Q * R);

disp("Should equal A (within numerical precision):");
disp(A);
