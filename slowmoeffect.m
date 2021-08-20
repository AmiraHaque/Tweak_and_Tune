
function retval = slowmoeffect ()
[filename,pathname]=uigetfile('*.*','Select the Input Audio');
[Q,S] = audioread(num2str(filename));
speed = 0.7;
S=S*speed;
soundsc(Q,S);
endfunction
