# Barnsley Fern

- [IFS(Iterated Function System)-Bildkodierung mit Iterierten Funktionensystemen](http://www.eberl.net/chaos/Sem/Grage/D_ifs.htm)
- [Lineare Abbildungen](http://www.mathe.tu-freiberg.de/~bernstei/Vorlesung-html/Folien/HM2-Folien-Lineare-Abbildungen-2018.pdf)
- [A Barnsley fern generator](https://www.chradams.co.uk/fern/maker.html)
- [Lineare Transformationen](http://www.chemgapedia.de/vsengine/vlu/vsc/de/ma/1/mc/ma_11/ma_11_03/ma_11_03_01.vlu.html)
- [Affine Abbildungen I](http://www.inf.fu-berlin.de/lehre/WS06/19605_Computergrafik/doku/rossbach_siewert/affinetransformation.html)
- [Affine Abbildungen II](https://www.redusoft.de/info/mathprof-hilfe/affine-abbildung.html)

## Code

```R
f1_abcd = [0 0 ; 0 0.16]
f2_abcd = [ 0.85 0.04 ; -0.04 0.85 ]
f3_abcd = [ 0.2 -0.26 ; 0.23 0.22 ]
f4_abcd = [-0.15 0.28 ; 0.26 0.24 ]

f1_ef = [ 0 ; 0]
f2_ef = [ 0 ; 1.6]
f3_ef = [ 0 ; 1.6]
f4_ef = [0 ; 0.44]

% Iterationen
n = 100000;

% Erstellung Matrix von Nullen
H = zeros(n,2);

x = 0
y = 0

% First point drawn
T = [x;y]

for i=2:n
    % probability Factor
    p = rand;
      if p < 0.01
           S1 = f1_abcd*T + f1_ef;
           x = S1(1);
           y = S1(2);
       elseif p < 0.85
           S2 = f2_abcd*T + f2_ef;
           x = S2(1);
           y = S2(2);
       elseif p < 0.93
           S3 = f3_abcd*T + f3_ef;
           x = S3(1);
           y = S3(2);
      else
           S4 = f4_abcd*T + f4_ef;
           x = S4(1);
           y = S4(2);
      end
       T = [x;y];
       H(i,1) = x;
       H(i,2) = y;
end

X = H(:,1)
Y = H(:,2)

plot(X,Y,'.', 'Color', [0, 0, 0], 'markersize', 0.1)
```
