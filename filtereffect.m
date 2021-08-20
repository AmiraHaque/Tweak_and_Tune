

function retval = filtereffect ()
[filename,pathname]=uigetfile('*.*','Select the Input Audio');
[x,Fs] = audioread(num2str(filename));
filtered=low_pass_filter(x,500,Fs);
sound(filtered,Fs)
endfunction
