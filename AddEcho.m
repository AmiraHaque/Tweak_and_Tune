[filename,pathname]=uigetfile('*.*','Select the Input Audio');
[x,Fs] = audioread(num2str(filename));
n=length(x); 
a=0.4; %attenuation factor 
d=5000; %delay 
y=zeros(n+d,1); %initializing the output music file
xn=padarray(x,[d,0],0,'pre');

for i = (d+1):1:n
  y(i-d,1) = x(i) + a*xn(i-d);
end