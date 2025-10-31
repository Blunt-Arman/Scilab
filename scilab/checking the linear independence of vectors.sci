clc;
V1 = [1; 2; 3];
V2 = [4; 5; 6];
V3 = [7; 8; 9];

A = [V1 V2 V3];
disp("Matrix formed by the given vectors:");
disp(A);

r = rank(A);

if r == size(A,2) then
    disp("The vectors are linearly independent.");
else
    disp("The vectors are linearly dependent.");
end

disp("Rank of the matrix:");
disp(r);
