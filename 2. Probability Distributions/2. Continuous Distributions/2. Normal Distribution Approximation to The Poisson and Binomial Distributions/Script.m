% Normal Distribution Approximation to The Poisson and Binomial Distributions
P = normcdf((9-46/7)/sqrt(46/7), 0, 1)
x = 1:16;
y = linspace(0, 16, 50);
yPoisson = poisspdf(x, 46/7);
NormApprox = normpdf(y, 46/7, sqrt(46/7));
plot([x; x], [zeros(1,16); yPoisson], 'k', y , NormApprox, 'k')
xlabel('Number of aircraft launched on time')
ylabel('Probability')