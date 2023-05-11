% Test for statistical significance of the mean and the variance
% Case 2
[h, p, ci] = ttest(DataSet81, 168, 0.05)
[h, p, ci] = ttest(DataSet81, 175, 0.05)

% Case 4
[x1, x2] = DataFci;
[h, p, ci] = ttest2(x1, x2, 0.05)

% Case 7
[x1, x2] = DataFci;
[h, p, ci] = vartest2(x1, x2, 0.05)