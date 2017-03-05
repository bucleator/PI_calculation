% PI Calculation. Nilakantha Series.

% Initial pi aproximation
pi_apx = 3;

% iterations n
n= 1e5;
% sign for the series sums
sig = 1;
for i=4:2:2*n
%    next = (4)/((i)*(i-1)*(i-2));
%    pi_apx = pi_apx + sig*next;
%    sig = -1*sig;

% I tried to reduce lines of calculations.
pi_apx = pi_apx + (sig*4)/((i)*(i-1)*(i-2));
sig = -1*sig;
end

pi_apx
