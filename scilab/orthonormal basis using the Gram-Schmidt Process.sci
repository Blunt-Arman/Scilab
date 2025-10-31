clc;
A = [1 1 0;
     1 0 1;
     0 1 1];

disp("Input matrix A (each column is a vector):");
disp(A);

[m, n] = size(A);

Q = zeros(m, n);

for j = 1:n
    v = A(:, j);
    
    for i = 1:j-1
        proj = (Q(:, i)' * A(:, j)) * Q(:, i);
        v = v - proj;
    end
    
    norm_v = norm(v);
    if norm_v <> 0 then
        Q(:, j) = v / norm_v;
    else
        Q(:, j) = zeros(m, 1);
    end
end

disp("Orthonormal basis (columns of Q):");
disp(Q);

disp("Verification (Q'' * Q):");
disp(Q' * Q);
