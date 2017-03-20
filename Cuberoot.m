tic
format long g
f = []
i = 1
k = []
%x = vpa(pi)
for x=1.0:+0.100000:2.0
    y = x.^3+4.*x.^2-10
    g = toc
    f(i) = y
    k(i) = g
    i = i+1
    if(y>0)
        x = x-0.1
        break
    end
end

y1 = x
for x = y1:+0.01:(y1+0.1)
    y = x.^3 + 4.*x.^2 - 10
    g = toc
    f(i) = y
    k(i) = g
    i = i+1
    if(y>0)
        x = x-0.01
        break
    end
end

y1 = x
for x = y1:+0.001:(y1+0.01)
    y = x.^3 + 4.*x.^2 - 10
    g = toc
    f(i) = y
    k(i) = g
    i = i+1
    if(y>0)
        x = x-0.001
        break
    end
end
y1 = x
for x = y1:+0.0001:(y1+0.001)
    y = x.^3 + 4.*x.^2 - 10
    g = toc
    f(i) = y
    k(i) = g
    i = i+1
    if(y>0)
        x = x-0.0001
        break
    end
end
y1 = x
for x = y1:+0.00001:(y1+0.0001)
    y = x.^3 + 4.*x.^2 - 10
    g = toc
    f(i) = y
    k(i) = g
    i = i+1
    if(y>0)
        x = x-0.00001
        break
    end
end

y1 = x
for x = y1:+0.000001:(y1+0.00001)
    y = x.^3 + 4.*x.^2 - 10
    g = toc
    f(i) = y
    k(i) = g
    i = i+1
    if(y>0)
        x = x-0.000001
        break
    end
end
plot(f,k)
toc