G = tf(2, [1 0]) * tf((1, [0.5 1])^2
nyquist(G)
bode(G)
grid
margin(G)						% Grafische Anzeigen von Gm und Pm
[Gm, Pm, Wcg, Wcp] = margin(G)	% direktes abspeichern der Werte
								% Gm: Gain marign  ;  Pm: Phase margin
								% Wcg: omega of Gm  ;  Wcp: omega of Pm