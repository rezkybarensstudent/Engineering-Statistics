wblplot(DataSet82)
% To determine the values of alpha and beta
ab = wblfit(x)
ab = wblfit(DataSet82)
[muW, varW] = wblstat(ab(1), ab(2))
sigW = sqrt(varW)
muN = mean(DataSet82)
sigmaN = std(DataSet82)
ab = wblfit(DataSet82);
xx = linspace(50, 200, 50);
yW = wblpdf(xx, ab(1), ab(2));
yN = normpdf(xx, mean(DataSet82), std(DataSet82));
plot(xx, yW, 'k-', xx, yN, 'k--')
legend('Weibull', 'Normal')
xlabel('x')
ylabel('Probability distribution functions')
ab = wblfit(DataSet82);
p = wblcdf(100, ab(1), ab(2))