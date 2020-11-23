%% Vektoren und Matrizen
%% Aufgabe 1:

x = linspace(-50,49,100);
y1 = ones(1,100).*25;
y2 = 0.0018.*x.^3 + 0.1.*x.^2- 10;

plot( x,y1,".-");
hold on;
plot( x, y2,"--")
hold off;

xline(0);
yline(0);
%% Aufgabe 2:

hold off;

% definition of variable m.
m = rand(100);

% definition of variable v.
v = zeros(1,100);

% initialisation of values of v.
for i = 1:100
    column = m(:, i);
    v(i) = mean(column);
end

% histogram of col 1 of m.
histogram(m(:,1));
hold on;

% histogram of v.
histogram(v);
hold off;

% caption and labels of diagram.
title("Von Uniform zu Normalverteilung");
legend("uniform distriubtion - 100 sampels", ...
       "mean of uniform sampels");