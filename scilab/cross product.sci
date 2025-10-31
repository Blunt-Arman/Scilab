clc;
A = [2; 3; 4];
B = [5; 6; 7];

disp("Vector A:");
disp(A);
disp("Vector B:");
disp(B);

dot_prod = A' * B;
disp("Dot Product of A and B:");
disp(dot_prod);

cross_prod = cross(A, B);
disp("Cross Product of A and B:");
disp(cross_prod);
