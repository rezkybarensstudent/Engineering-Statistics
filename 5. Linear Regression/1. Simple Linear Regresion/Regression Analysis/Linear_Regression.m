[x, y] = DataRegress1;
[c, s] = polyfit(x, y, 1);
[yhat, w] = polyconf(c, x, s, 0.05);
syy = sum(y.^2)-length(x)*mean(y)^2;
sse = syy-c(1)*(sum(x.*y)-length(x)*mean(x)*mean(y));
plot(x, yhat, 'k-', x, yhat-w, 'k-', x, yhat+w ,'k-', x, y, 'ks', [x; x], [yhat; y], 'k-')
legend('Regression line', '95% confidence interval of y', 'Location', 'SouthEast')
axis([2, 3.6, 48, 57])
xlabel('x (Input)')
ylabel('y (Response)')
text(2.1, 56, ['Coefficient of determination R^2 = ' num2str(1-sse/syy,3)])