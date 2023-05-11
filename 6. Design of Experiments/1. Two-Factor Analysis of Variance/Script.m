[d, xbar] = DataAnova2;
anova2(d, 4);
figure(2)
for k = 1:3
plot(1:3,xbar(1:3,k),'ks-')
hold on
text(2.1, xbar(2,k)-5, ['B_' num2str(k)])
end
ylabel('Average response')
xlabel('Levels of A','fontsize',14)
set(gca, 'XTick', [1,2,3])
set(gca, 'XTickLabel', {'A1' 'A2' 'A3'})