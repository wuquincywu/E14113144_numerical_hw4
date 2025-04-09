clc;clear;close;
%a
a = 0.000001; b = 1; n = 4;
h = (b - a)/2/n;
ansa = fa(a) + fa(b);
for i = 1 : 2*n-1
    xi = a + i*h;
    fi = fa(xi);
    if mod(i,2) == 0
        ansa = ansa + 2*fi;
    else
        ansa = ansa + 4*fi;
    end
end
ansa = ansa*h/3;
%%
%b
a = 1; b = 0.000001; n = 4;
h = (b - a)/2/n;
ansb = fb(a) + fb(b);
for i = 1 : 2*n-1
    xi = a + i*h;
    fi = fb(xi);
    if mod(i,2) == 0
        ansb = ansb + 2*fi;
    else
        ansb = ansb + 4*fi;
    end
end
ansb = ansa*h/3;
%%
%answer
str1 = ['ansa =', num2str(ansa)];
str2 = ['ansb =', num2str(ansb)];
disp(str1);
disp(str2);