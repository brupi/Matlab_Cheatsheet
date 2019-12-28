%% Einige kleine Kniffs
A = B'		% ' bedeutet transponiert
v = u.*u	% . bedeutet Elementweise Operation -> v ist vektor
w = u'*u	% w ist skalar (skalarprodukt von u und u)

%% Least Square implementation
Phi = [1 2 3]'					% transponiert damit Spaltenvektor!
y = [0.5 1.9 3.2]'
theta = inv(Phi'*Phi)*Phi'*y	% 'Naiv'
theta = pinv(Phi)*y				% Weniger Operationen
theta = Phi\y					% Ohne Inversion (beste Variante und
								% nummerisch robust)
%% Transfer function
sys1 = tf(2*[1 1], poly([0 -2]))		% sys1 = 2*(s+1)/((s+1)*s)
sys2 = tf(poly([-1 -2]), poly([0 -1]))	% poly macht aus Nullstellen ein 
										% Polynom
sys = minreal(feedback(sys1, sys2, -1))	% Feedbackschaltung mit feedback
stability = isstable(sys)				% minreal => loescht kritische 
										% Polstellen ???
%% Gleichung (System) symbolisch loesen
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