clc;
A = [4 1 1;
     1 2 3;
     1 3 6];

disp("Matrix A:");
disp(A);

if A == A' then
    disp("A is a symmetric matrix.");
else
    disp("A is NOT symmetric.");
end

[P, D] = spec(A);

disp("Eigenvalues (diagonal elements of D):");
disp(diag(D));
disp("Matrix of Eigenvectors (P):");
disp(P);

disp("Verification of orthogonality (P' * P):");
disp(P' * P);

disp("Verification of A = P * D * P':");
disp(P * D * P');

disp("Original matrix A:");
disp(A);
