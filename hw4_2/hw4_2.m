clc;clear;close;
a = 1; b = 1.5; 
n1 = 3; n2 = 4;
C1 = [0.556, 0.889 , 0.556];
C2 = [0.348, 0.652 , 0.652, 0.348];
Z1 = [-0.775, 0 , 0.775];
Z2 = [-0.861, 0.34 , -0.34, 0.861];
ans1 = 0; ans2 =0;
extans = function2_2(b) - function2_2(a);
for i = 1 : n1
    ans1 = ans1 + (b -a)/2 * C1(i) * function2((a+b)/2 + (b -a)/2*Z1(i));
end
for i = 1 : n2
    ans2 = ans2 + (b -a)/2 * C2(i) * function2((a+b)/2 + (b -a)/2*Z2(i));
end
e1 = abs(ans1 - extans);
e2 = abs(ans2 - extans);


str1 = ['ans1(n = 3) =', num2str(ans1)];
str2 = ['ans2(n = 4) =', num2str(ans2)];
str3 = ['error(n = 3) =', num2str(e1)];
str4 = ['error(n = 4) =', num2str(e2)];
disp(str1);
disp(str2);
disp(str3);
disp(str4);
disp('n = 4 時更為準確')