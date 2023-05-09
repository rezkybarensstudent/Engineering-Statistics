% If the bin centers had not been specified, then the resulting histogram would look
% slightly different because the centers of the bins would be different.
[nn, b] = hist(DataSet81, 9);
bar(b, nn, 0.95, 'y');
axis([70, 250, 0, max(nn)])