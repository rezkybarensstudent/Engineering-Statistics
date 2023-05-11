vv = DataAnova1;
[r, c] = size(vv);
pp = anova1(vv);
meen = mean(vv);
k = 0;
for n = 1:r
for m = 1:c
k = k+1;
e(k) = vv(n,m)-meen(m);
end
end
figure(3)
normplot(e)