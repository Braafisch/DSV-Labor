%Spektrum2.M
%
%Darstellung des einseitigen Amplitudenspektrums
%zweier Signale x1 und x2 zum Vergleich
%
function spektrum2=spektrum2(x1,x2,fT);
%
%x1 und x2 sind Zeitsignale
%fT ist die Abtastfrequenz
%
D1=size(x1);
if D1(1) ~= 1 & D1(2) ~= 1, return, end;
xm1=x1;
if D1(2) == 1, xm1=xm1.'; end;
D2=size(x2);
if D2(1) ~= 1 & D2(2) ~= 1, return, end;
xm2=x2;
if D2(2) == 1, xm2=xm2.'; end;
%
if length(xm1) ~= length(xm2), disp 'Abbruch in der Funktion Spektrum2';
   disp 'Beide Signale müssen dieselbe Größe haben'; return; end;
%
N=length(xm1);
k=0:N-1;
%
%Fast Fourier Transform von x1 (Darstellung 0 <= f < fT)
%
spec1=fft(xm1,N);spec1=spec1/N;
%
%einseitiges Amplitudenspektrum von x1 (Darstellung 0 <= f <= fT/2)
%
if mod(N,2) == 1,
   % N ist ungerade 
   spec1_neu=[spec1(1) 2*spec1(1,2:(N+1)/2)];
   k=0:(N-1)/2;
else
   % N ist gerade
   spec1_neu=[spec1(1) 2*spec1(1,2:N/2) spec1(N/2+1)];
   k=0:N/2;
end;
%
%Fast Fourier Transform von x2 (Darstellung 0 <= f < fT)
%
spec2=fft(xm2,N);spec2=spec2/N;
%
%einseitiges Amplitudenspektrum von x1 (Darstellung 0 <= f <= fT/2)
%
if mod(N,2) == 1,
   % N ist ungerade 
   spec2_neu=[spec2(1) 2*spec2(1,2:(N+1)/2)];
   k=0:(N-1)/2;
else
   % N ist gerade
   spec2_neu=[spec2(1) 2*spec2(1,2:N/2) spec2(N/2+1)];
   k=0:N/2;
end;
f=(fT/N)*k;
figure;
stem(f,abs(spec1_neu),'b');
hold on
stem(f,abs(spec2_neu),'r');
title('einseitiges Amplitudenspektrum (Signal x1 blau, Signal x2 rot)'),
ylabel('Betrag'),
xlabel('f/Hz --->')
hold off
%

