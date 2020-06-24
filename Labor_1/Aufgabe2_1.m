N=2^7;f0=500;
fT=8000; 
k=0:1:N-1; 
x=sin(2*pi*k*f0/fT); 
figure 
plot(k/fT,x) 
title('Schwingung mit der Frequenz f0 (plot)'), 
xlabel('t  --->'), pause 
figure; 
stem(k,x); 
title('Schwingung mit der Frequenz f0 (stem)'), 
xlabel('k  --->'), pause 
figure; 
stairs(k/fT,x); 
title('Schwingung mit der Frequenz f0 (stairs)'), 
xlabel('t  --->'), pause 
%Wie viele Perioden von x(kT) werden dargestellt? 
%Es werden 8 Perioden der Funktion x(kT) darestellt.

%Wie viele Abtastwerte fallen in eine Periode? 
%Es fallen 16 Abtastwerte in eine Periode.

%Wie lautet allgemein der Zusammenhang zwischen der Anzahl N per der Abtastwerte pro Periode, der Signalfrequenz f0 und der Abtastfrequenz fT? Nehmen Sie dazu an, dass der Quotient fT/f0 ganzzahlig ist.
%Periode = N/Abtastwerte pro Periode Abtastwerte pro Periode = fT/f0

spektrum(x,fT);

N=2^7;f0=531;
fT=8000; 
k=0:1:N-1; 
x=sin(2*pi*k*f0/fT); 
figure 
plot(k/fT,x) 
title('Schwingung mit der Frequenz f0 (plot)'), 
xlabel('t  --->'), pause 
figure; 
stem(k,x); 
title('Schwingung mit der Frequenz f0 (stem)'), 
xlabel('k  --->'), pause 
figure; 
stairs(k/fT,x); 
title('Schwingung mit der Frequenz f0 (stairs)'), 
xlabel('t  --->'), pause

spektrum(x,fT);

