sys1 = tf(2*[1 1], poly([0 -2]))		% sys1 = 2*(s+1)/((s+1)*s)
sys2 = tf(poly([-1 -2]), poly([0 -1]))	% poly macht aus Nullstellen ein 
										% Polynom
sys = minreal(feedback(sys1, sys2, -1))	% Feedbackschaltung mit feedback
stability = isstable(sys)				% minreal => loescht kritische 
										% Polstellen ???
step(sys1)								% Sprungantwort des Systems
step(sys1, 2)							% Sprungantwort der ersten 2 sek
zpk(sys1)								% Faktorisieren der Polynome
										% (umkehrung von tf())