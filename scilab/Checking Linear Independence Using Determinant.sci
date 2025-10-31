clc;
V1 = [1; 4; 6];
V2 = [3; 9; 1];
V3 = [5; 1; 7];

A = [V1 V2 V3];

disp("Matrix formed by the given vectors:");
disp(A);
d = det(A);
disp("Determinant of the matrix:");
disp(d);
if d <> 0 then
    disp("The vectors are linearly independent.");
else
    disp("The vectors are linearly dependent.");
end
