%% Prüfung 1
%% Aufgabe 1:
% 1) Erzeugen Sie einen Vektor mit 100 Elementen mit den Werten [-50, -49 bis 
% 49] und dem Namen x.

x = linspace(-50,49,100);
%% 
% 2) Erzeugen Sie einen Vektor mit 100 Elementen, welche alle den Wert 25 haben. 
% Der Vektor soll den Namen y1 erhalten.

y1 = ones(1,100).*25;
%% 
% 3) Erzeugen Sie einen Vektor mit 100 Elementen. Der Vector soll den Namen 
% y2 erhalten. Der Wert des i-ten Elementes von y2 soll sein: y(i) = 0.0018*x(i)^3 
% + 0.1*x(i)^2 - 10.

y2 = 0.0018.*x.^3 + 0.1.*x.^2- 10;
%% 
% 4) Erzeugen Sie ein Diagramm, welches die Variablen y1 und y2 als Funktionen 
% von x darstellt. (x-Achse = Variable x, y Achse = variablen y1 und y2, Wählen 
% Sie für y1 und y2 unterschiedliche "Linestyles".

plot( x,y1,".-");
hold on;
plot( x, y2,"--")
hold off;
%% 
% 5) Zeichnen Sie eine vertikale und horizontale Linie durch den Ursprung (x= 
% 0 und y = 0) ; (Matlab Funktionen xline(0) und yline(0)).

xline(0);
yline(0);
%% Aufgabe 2:
% 1) Erzeugen Sie eine Matrize m mit 100 Zeilen und 100 Spalten. Die Werte der 
% Matrize sollen zufällig zwischen 0 und 1 liegen.

hold off;
% definition of variable m.
m = rand(100);
%% 
% 2) Erstellen Sie einen Vektor v mit 100 Elementen.

% definition of variable v.
v = zeros(1,100);
%% 
% 3) Initialisieren Sie die Elemente des Vektors v mit dem Durchschnitt der 
% Spalten von m (in der for Schleife). Verwenden Sie die Funktion mean(spalte).

% initialisation of values of v.
for i = 1:100
    column = m(:, i);
    v(i) = mean(column);
end
%% 
% 4) Erstellen Sie ein Histogramm  der ersten Spalte der Matize m.

% histogram of col 1 of m.
histogram(m(:,1));
hold on;
%% 
% 5) Erstellen Sie in demselben Diagramm ein Histogramm des Vektor v.

% histogram of v.
histogram(v);
hold off;
%% 
% 6) Geben Sie dem Diagramm einen Titel.

% caption and labels of diagram.
title("Von Uniform zu Normalverteilung");
%% 
% 7) Beschriften Sie die zwei dargestellten Datenelemente in einer Legende.

legend("uniform distriubtion - 100 sampels", ...
       "mean of uniform sampels");