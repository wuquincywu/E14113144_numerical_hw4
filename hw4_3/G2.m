function value = G2(z)
    a = 0; b = pi/4;
    x = (a+b)/2 + (b-a)/2*z;
    value = 0.5*(cos(x) + sin(x));
end

