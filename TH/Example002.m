function Example002()
strMsg = '\n Please input m:';
m = input(strMsg);
strMsg = '\n Please input n:';
n = input(strMsg);
a= ones(m,n); %{T?o mt toàn s? 1}%
b = zeros(m,n); %{T?o mt toàn s? 0}%
c = eye(m,n); %{T?o mt ??n v? 1}%
d = randi([-10,10],m,n);
a(1,1) = 5;
e = size(a);
disp('The result of [d] is:');
disp(d);
end