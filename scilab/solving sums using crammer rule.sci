clc;
A = [  2   1  -1;
      -3  -1   2;
      -2   1   2 ];

B = [8; -11; -3];

disp("Coefficient Matrix A:");
disp(A);
disp("Constant Matrix B:");
disp(B);

D = det(A);
if D == 0 then
    disp("The system has no unique solution (det(A) = 0).");
else
    Ax = A; Ay = A; Az = A;

    Ax(:,1) = B;
    Ay(:,2) = B;
    Az(:,3) = B;

    Dx = det(Ax);
    Dy = det(Ay);
    Dz = det(Az);

    x = Dx / D;
    y = Dy / D;
    z = Dz / D;

    disp("Determinant of A:");
    disp(D);
    disp("Determinants Dx, Dy, Dz:");
    disp([Dx Dy Dz]);

    disp("Solution of the system:");
    mprintf("x = %f\ny = %f\nz = %f\n", x, y, z);
end
