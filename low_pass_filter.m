
function [filtered,b] = low_pass_filter (sound, cutoff,fs)
  f_max = fs/2;
  b=fir1(15,cutoff/f_max,"low");
  filtered=filter(b,1,sound);
endfunction
