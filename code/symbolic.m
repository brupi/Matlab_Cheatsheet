syms s		% s ist eine symboliche Variable

b = 1/(s+1);
c = 1/s;
d = 1/(s+1);
e = 2;
f = 2;
g = -26;
h = -12;
i = 1/(s^2+3*s+2);

sys = (b+c+d+e)/(1-(b*f + b*c*g + b*c*d*h + c*d*e*i));
simplify(sys)			% simplify => Gleichung vereinfachen
pretty(simplify(sys))	% pretty => schoene Darstellung von Bruechen und 
						% Exponenten