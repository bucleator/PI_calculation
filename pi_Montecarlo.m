% PI Calculation. Montecarlo method.

% Number of darts.
n = 1e7;

% Square 2 per side, Center at the origin. A Inscrit Circle of radio 1
l = 2;
r = 1;
% Vector of positions of the darts.
X = zeros(n,2);

outsideDarts = 0;
insideDarts = 0;

% We throw all the darts
for i=1:n
    X(i,:) = [(l*rand(1)-(l/2))  (l*rand(1)-(l/2))];
% Find which are inside the circle, count them
    d = sqrt(X(i,1)^2 + X(i,2)^2);
    if d<=r
        insideDarts = insideDarts + 1;
    end
end
    
%as  pi/4  =  inside/NumberofDarts  => pi = 4(inside/NumberofDarts)

% Voilà
pi_Montecarlo = 4*(insideDarts/n)
