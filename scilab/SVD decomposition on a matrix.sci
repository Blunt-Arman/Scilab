clc;
A = [1 2 3;
     4 5 6;
     7 8 9];

disp("Matrix A:");
disp(A);

[U, S, V] = svd(A);

disp("Matrix U (Left Singular Vectors):");
disp(U);

disp("Matrix S (Singular Values on the diagonal):");
disp(S);

disp("Matrix V (Right Singular Vectors):");
disp(V);

disp("Verification: U * S * V'' (should be equal to A):");
disp(U * S * V');
