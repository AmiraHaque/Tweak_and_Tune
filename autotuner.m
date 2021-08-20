inputfile = 'input3.wav'
settings = xlsread('settings5.xlsx');
[x,Fs] = audioread(inputfile);
info = audioinfo(inputfile);
time = 0 : (1 / Fs) : (info.Duration);
length(settings);
y = x;

for i = 1 : length(settings)
  if(settings(i,1) < 0)
    break
  elseif(settings(i,2) < 0)
    continue
  elseif(settings(i,2) > Fs / 2)
    error('Goal frequency too high');
  else
    start_time = floor((Fs) * settings(i,1)) + 1;
  endif

  if(settings(i+1,1) < 0)
    end_time = length(time);
  else
    end_time = floor((Fs) * settings(i + 1,1)) + 1;
  endif
    
  N = end_time - start_time + 1;
  xfft = fft(x(start_time : end_time));
  [peakMagnitude, peakIndex] = max(abs(xfft));
  targetIndex = floor((N * settings(i,2) / Fs)) + 1;
  scaleFactor = targetIndex / peakIndex;
  yfft = xfft;
  yfft(1 : N) = 0;
  
  for j = 1 : N
    k = floor(j * scaleFactor);
    if(k >= 1 && k <= N)
      yfft(k) += xfft(j);
     endif
  endfor
  
  ysection = real(ifft(yfft,N));
  
  k = 1;
  for j = start_time : end_time
    y(j) = ysection(k);
    y(j,2) = ysection(k);
    k++;
  endfor
endfor

audiowrite('output.wav',y,Fs);
sound(x, Fs);
sound(y, Fs);