% Boxplot
boxplot(DataSet81, 'notch', 'on')
% To obtain the values of and explicitly.
q1 = prctile(DataSet81, 25)
q3 = prctile(DataSet81, 75)
% To determine whether the data are symmetrically distributed about the mean
s = skewness(DataSet81)