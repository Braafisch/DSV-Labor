%Spektrum_einseitig.M
%
%Darstellung des einseitigen Amplitudenspektrums
%
function spektrum_einseitig=spektrum_einseitig(x,fT);
%
%x ist ein Zeitsignal
%fT ist die Abtastfrequenz
%
D=size(x);
if D(1) ~= 1 & D(2) ~= 1, return, end;
xm=x;
if D(2) == 1, xm=xm.'; end;
N=length(xm);
k=0:N-1;
spec=fft(xm,N);spec=spec/N;
%
%Fast Fourier Transform (Darstellung 0 <= f <= fT/2)
%
if mod(N,2) == 1,
   % N ist ungerade 
   spec_neu=[spec(1) 2*spec(1,2:(N+1)/2)];
   k=0:(N-1)/2;
else
   % N ist gerade
   spec_neu=[spec(1) 2*spec(1,2:N/2) spec(N/2+1)];
   k=0:N/2;
end;
f=(fT/N)*k;
stem(f,abs(spec_neu));
title('einseitiges Amplitudenspektrum'),
ylabel('Betrag'),
xlabel('f/Hz --->')
%zoom on
%

