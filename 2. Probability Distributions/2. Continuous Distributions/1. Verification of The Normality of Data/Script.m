% Verification of the normality of data

% First, we replot its histogram and superimpose on this bar graph the
% corresponding normal probability distribution function. This is
% accomplished with histfit
histfit(DataSet81, 9)
colormap([1,1,1,])
% Next, we see whether the data are normally distributed. To do these operations
normplot(DataSet81)
% If we accept the normal distribution as an adequate representation of these data,
% then we can determine the values at which, say, 90% of the data lie. Use
% norminv :
m = mean(DataSet81);
s = std(DataSet81);
zh = norminv(.95, m, s)
zl = norminv(.05, m, s)
% Upon execution of this script, we obtain zh = 218.2145 and z1 = 107.1105.
% As a check, we find the difference between the probabilities of these two
% limits, which are determined from the following script:
m = mean(DataSet81);
s = std(DataSet81);
zh = norminv(.95, m, s);
zl = norminv(.05, m, s);
ph = normcdf(zh, m, s)
pl = normcdf(zl, m, s)