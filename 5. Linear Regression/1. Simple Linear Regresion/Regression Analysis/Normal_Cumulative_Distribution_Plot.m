[x, y] = DataRegress1;
normplot(y-polyval(polyfit(x, y, 1), x))