echo off, close all, clear all
%Aufgabe2_1_movie.M
%
%Spektralanalyse sinusförmiger Signale
%
%Amplitudenspektrum
%
N=2^8;fT=8000;f0=490:0.5:690;
k=0:1:N-1;
for j=1:length(f0),
   x=sin(2*pi*k*f0(j)/fT);
%   spektrum_einseitig(x'.*hamming(length(x)),fT)
   spektrum_einseitig(x,fT)
  axis([0 fT/2 0 1.2])
  Par=['Amplitudenspektrum, f0 = ',num2str(f0(j)),' Hz'];
  text(500,1.1,Par);
  %
  pause(0.1)
%M(j) = getframe;
%  
end;
%
%movie(M);
%movie2avi(M,'Aufgabe2_1')
return

