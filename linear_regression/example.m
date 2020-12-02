x = 1:50;
rX = randn(1,50) * 5;
y = x * 50 + rX;
scatter(x,y);
model = fitlm(x,y);
plot(model);
plotResiduals(model, "probability");