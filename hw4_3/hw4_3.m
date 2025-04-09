clc;clear;close;
a = 0; b = pi/4; 
c = [0.556, 0.889 , 0.556];
z = [-0.775, 0 , 0.775];


extans = 5/6*2^0.5 - 2/3;

%simpson
n = 4;
h = (b - a)/n;
x0 = a;
x = zeros(1,n);
for i = 1:n
    x(i) = x0 + i*h;
end
ansa = 2*h/45*(7*g(x0) + 32*g(x(1)) + 12*g(x(2)) + 32*g(x(3)) + 7*g(x(4)));
ea = abs(ansa - extans);
%%
%G.C.
n = 3;
c = [0.556, 0.889 , 0.556];
z = [-0.775, 0 , 0.775];
ansb = 0;
for i = 1 : n
    x = (b-a)/2*z(i)+(b+a)/2;
    for j = 1 : n
        y = G1(z(i))*z(j)+G2(z(i));
        ansb = ansb + (b-a)/2*c(i)*c(j)*G1(z(i))*f(x,y);
    end
end


eb = abs(ansb - extans);

%%
str1 = ['ansa(simpson) =', num2str(ansa)];
str2 = ['ansb(gaussian quadrature) =', num2str(ansb)];
str5 = ['ans(exact) =', num2str(extans)];
str3 = ['error(simpson) =', num2str(ea)];
str4 = ['error(gaussian quadrature) =', num2str(eb)];
disp(str1);
disp(str2);
disp(str3);
disp(str4);
disp('simpson(n=4,m=4) 更為準確')