[data1, data2] = DataFci;
r = var(data1)/var(data2);
L1 = length(data1);
L2 = length(data2);
q2 = r*finv(.975, L2 -1, L1-1);
q1 = r/finv(.975, L1-1, L2-1);
disp(['Ratio of sample variances = ' num2str(r)])
disp('Confidence interval for ratio of sample variances at 95% confidence level -')
disp([' ' num2str(q1) ' <= Ratio of sample variances <= ' num2str(q2)])