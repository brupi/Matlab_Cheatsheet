Phi = [1 2 3]'					% transponiert damit Spaltenvektor!
y = [0.5 1.9 3.2]'
theta = inv(Phi'*Phi)*Phi'*y	% 'Naiv'
theta = pinv(Phi)*y				% Weniger Operationen
theta = Phi\y					% Ohne Inversion (beste Variante und
								% nummerisch robust)