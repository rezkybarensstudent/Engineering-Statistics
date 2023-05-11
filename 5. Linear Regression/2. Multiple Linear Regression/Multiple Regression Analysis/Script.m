function Multiple_Regression_Analysis
[y, X] = DataMultiRegress1;
[b, bcl, e, ecl, stat] = regress(y, X, 0.05);
lenb = length(b);
disp('Regression coefficients and their confidence limits')
disp([num2str(bcl(:,1)) repmat(' <= beta(', lenb, 1) num2str((0:lenb-1)')...
repmat(') = ', lenb, 1) num2str(b) repmat(' <= ', lenb, 1) num2str(bcl(:,2))])
disp(['Coefficient of determination R^2 = ' num2str(stat(1))])
disp(['Test statistic F0 = ' num2str(stat(2)) ' and corresponding p-value = ' ...
num2str(stat(3))])
figure(1)
rcoplot(e, ecl)
figure(2)
normplot(e)
figure(3)
[x1, x2] = meshgrid(linspace(7.1, 10.3, 10), linspace(0.0, 7.8, 15));
x3 = [0, 18]; x12 = [0.5, 0.2];
for k = 1:2
mesh(x1, x2, Surface(x1, x2, x3(k), b))
text(10, -0.7, x12(k), ['x_3=' num2str(x3(k))])
hold on
end
view([-63 26])
xlabel('x_1')
ylabel('x_2')
zlabel('y')
function z = Surface(x1, x2, x3, beta)
z = beta(1)+ beta(2)*x1+ beta(3)*x2+ beta(4)*x3+ beta(5)*x1.*x2+...
beta(6)*x1.*x3+beta(7)*x2.*x3+ beta(8)*x1.^2+beta(9)*x2.^2+beta(10)*x3.^2;