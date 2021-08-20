

function tremolo = tremolo (sound, freq,fs)
  tremolo = zeros(length(sound),1);
  for i=1:length(sound)
    tremolo(i)= sin(2*pi*freq/fs*i)*sound(i);
  endfor
endfunction
