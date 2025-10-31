clc;
A = [2 1 0;
     1 3 1;
     0 1 2];

disp("Matrix A:");
disp(A);

[V, D] = spec(A);

disp("Eigenvalues of A (diagonal elements of D):");
disp(diag(D));

disp("Eigenvectors of A (columns of V):");
disp(V);

disp("Verification: A * V = V * D");
disp(A * V);
disp(V * D);
