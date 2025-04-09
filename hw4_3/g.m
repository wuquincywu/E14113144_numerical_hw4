function value = g(x)
    n = 4;
    h = (cos(x) - sin(x))/n;
    y0 = sin(x);
    y = zeros(1,n);
    for i = 1:n
        y(i) = y0 + i*h;
    end
    value = 2*h/45*(7*f(x, y0) + 32*f(x, y(1)) + 12*f(x, y(2)) + 32*f(x, y(3)) + 7*f(x, y(4)));
end

