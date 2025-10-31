clc;
A = [2 1 0;
     1 3 1;
     0 1 2];

disp("Matrix A:");
disp(A);

n = size(A, 1);
x = ones(n, 1);
tol = 1e-6;
max_iter = 100;
lambda_old = 0;
for k = 1:max_iter
    y = A * x;
    lambda = max(abs(y));
    x = y / lambda;
    if abs(lambda - lambda_old) < tol then
        break;
    end

    lambda_old = lambda;
end
disp("Dominant Eigenvalue (approximate):");
disp(lambda);

disp("Corresponding Eigenvector (normalized):");
disp(x);
disp("Number of iterations:");
disp(k);
disp("Verification: A * x ≈ lambda * x");
disp(A * x);
disp(lambda * x);
