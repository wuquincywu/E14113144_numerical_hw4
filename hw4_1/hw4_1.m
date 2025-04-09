clc;clear;close;
a = 1; b = 2; h = 0.1;
n = (b - a)/2/h;
tempa = 0; tempb = 0; tempc = 0;
for i = 1 : 2*n-1
    xi = a + i*h;
    fi = function1(xi);

    tempa = tempa + 2*fi;  

    if mod(i,2) == 0
        tempb = tempb + 2*fi;
    else
        tempb = tempb + 4*fi;
        tempc = tempc + fi;
    end
end
fa = function1(a); fb = function1(b);
ansa = h/2*(fa + tempa + fb);
ansb = h/3*(fa + tempb + fb);
ansc = h*2*(tempc);
a1 = ['ansa =', num2str(ansa)];
a2 = ['ansb =', num2str(ansb)];
a3 = ['ansc =', num2str(ansc)];
disp(a1);
disp(a2);
disp(a3);