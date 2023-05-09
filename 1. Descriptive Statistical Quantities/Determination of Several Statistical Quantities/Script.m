data = DataSet81;
n = length(data);
b = 80:20:240;
nn = hist(data, b);
maxn = max(nn);
cs = cumsum(nn*maxn/n);
bar(b, nn, 0.95, 'y')
axis([70, 250, 0, maxn])
box off
hold on
plot(b, cs, 'k-s')
title('\leftarrow Histogram Cumulative distribution \rightarrow')
ylabel('Number of occurrences')
xlabel('Measured values')
text(72, 0.97*maxn, ['Mean = ' num2str(mean(data))])
text(72, 0.92*maxn, ['Median = ' num2str(median(data))])
text(72, 0.87*maxn, ['Geometric mean = ' num2str(geomean(data))])
text(72, 0.82*maxn, ['Standard deviation = ' num2str(std(data))])
text(72, 0.77*maxn, ['No. of samples = ' num2str(n)])
text(72,.67*maxn, ['Maximum = ' num2str(max(data))])
text(72,.72*maxn, ['Minimum = ' num2str(min(data))])
text(72,.62*maxn, ['Range = ' num2str(range(data))])
plot([70 250], [maxn maxn], 'k', [250 250], [0 maxn], 'k')
j = 0:0.1:1;
lenj = length(j);
text(repmat(251, lenj, 1), maxn*j', num2str(j', 2))
plot([repmat(248.5, 1, lenj); repmat(250, 1, lenj)], [maxn*j; maxn*j], 'k')