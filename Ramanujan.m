% PI Calculation. Ramanujan-type formula

% iterations n
n = 20;
sum = 0;
for i=0:n
    sum = sum + ( (factorial(4*i))/(((4^i)*factorial(i)))^4)*((1103+26390*i)/(99^(4*i)));
end

pi_inv = ((sqrt(8))/(99^2))*sum;

pi_apx = 1/pi_inv

pi()-pi_apx
