range = 5;
numPoints = 1000;
dx = range/numPoints;
t = linspace(1, range, numPoints);
x = zeros(1000,1);
x = x+9.81;
xi = zeros(1000,1);
xii = zeros(1000,1);

for i = 2:1000
    xi(i) = xi(i-1) + dx*x(i);
    xii(i) = xii(i-1) + dx*xi(i);
end

plot(t,x);
hold on;
plot(t, xi);
plot(t, xii);
hold off;
