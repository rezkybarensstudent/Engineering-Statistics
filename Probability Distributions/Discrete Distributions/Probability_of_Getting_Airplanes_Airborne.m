% Probability of Getting Airplanes Airborne

% The probability mass function of the binomial distribution
Pb = binopdf(12, 16, 0.80)
%{
The Probability that at least fourteen aircraft can become air-borne
immediately is determined recall Equation (8.5) and (8.6)
%}
Pb = sum(binopdf(14:16, 16, 0.80))
n = 1:16;
% The probability mass function of the binomial distribution
Pb = binopdf(n, 16, 0.80);
% Plot
plot([n; n], [zeros(1,16); Pb], 'k')
% Add text descriptions to data points
text(8-.7:16-.7, Pb(8:16)+.005, num2str(Pb(8:16)',3))
axis([0, 17, 0, 0.27])
% Number of aircraft launched on time Label
xlabel('Number of aircraft launched on time')
% Probability Label
ylabel('Probability')