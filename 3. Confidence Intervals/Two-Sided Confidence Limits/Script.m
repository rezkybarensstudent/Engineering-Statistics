meen = mean(DataSet81);
L = length(DataSet81);
q = std(DataSet81) * tinv(0.975, L-1) / sqrt(L);
disp(['Sample mean = ' num2str(meen)]);
disp('Confidence interval for sample mean at 95% confidence level –');
disp([' ' num2str(meen-q) ' <= Sample mean <= ' num2str(meen+q)]);