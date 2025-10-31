clc
A = [2 -1 1;
     3 3 9;
     3 3 5];
B = [2; -1; 4];

n = size(A,1);
Aug = [A B];

for i = 1:n-1
    [pivot, p] = max(abs(Aug(i:n,i)));
    p = p + i - 1;
    if p <> i then
        temp = Aug(i,:);
        Aug(i,:) = Aug(p,:);
        Aug(p,:) = temp;
    end
    
    for j = i+1:n
        factor = Aug(j,i)/Aug(i,i);
        Aug(j,:) = Aug(j,:) - factor * Aug(i,:);
    end
end

x = zeros(n,1);
x(n) = Aug(n,n+1)/Aug(n,n);
for i = n-1:-1:1
    x(i) = (Aug(i,n+1) - Aug(i,i+1:n)*x(i+1:n)) / Aug(i,i);
end

disp("Solution of the system:");
disp(x);
