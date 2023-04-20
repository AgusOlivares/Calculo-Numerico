function integracionTrapeciosMultiples
  
  clc
  
  x = [0, 0.1, 0.2, 0.3, 0.4];
  y = [1, 7, 4, 3, 5];
  
  h = x(2) - x(1); %Los x tienen la misma longitud
  
  suma = 0;
  
  n = length(x);
  
  for i = 2: n-1
    suma = suma + y(i);
  endfor
  I = h * ((y(1)/2) + suma + y(n)/2);
  
  fprintf("La integral es %d", I);
    
    
  
endfunction
