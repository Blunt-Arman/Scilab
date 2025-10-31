clc;
A = [4 -1 0 -1 0 0;
    -1 4 -1 0 -1 0;
     0 -1 4 0 0 -1;
    -1 0 0 4 -1 0;
     0 -1 0 -1 4 -1;
     0 0 -1 0 -1 4];

b = [0; 5; 0; 6; -2; 6];

n = size(A, 1);
x = zeros(n, 1);
tol = 1e-5
max_iter = 100;
disp("Matrix A:");
disp(A);
disp("Vector b:");
disp(b);
for k = 1:max_iter
    x_old = x;
    for i = 1:n
        sum1 = 0;
        sum2 = 0;
        for j = 1:i-1
            sum1 = sum1 + A(i, j) * x(j);
        end
        for j = i+1:n
            sum2 = sum2 + A(i, j) * x_old(j);
        end
        x(i) = (b(i) - sum1 - sum2) / A(i, i);
    end
    if norm(x - x_old, "inf") < tol then
        break;
    end
end
disp("Solution vector x:");
disp(x);
disp("Number of iterations used:");
disp(k);
disp("Verification: A * x (should be close to b)");
disp(A * x);
