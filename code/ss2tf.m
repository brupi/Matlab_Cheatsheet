[b, a] = ss2tf(A, B, C, D)	% [b, a] ist input von tf()
							% sprich b und a sind Vektoren
							% A: n*n Matrix
							% B: n*m Matrix
							% C: k*n Matrix
							% D: k*m Matrix
[A, B, C, D] = tf2ss(b, a)	% ACHTUNG: kann in diese Richtung mehrere 
							% Ergenisse haben