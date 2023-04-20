function integracionSimpsonCompuesta
  
  clc
  
  x = [0, 0.1, 0.2, 0.3, 0.4];
  y = [1, 7, 4, 3, 5];
  
  h = x(2) - x(1); %Los x tienen la misma longitud
  
  suma1 = 0;
  suma2 = 0;
  
  n = length(x);
  
  for i = 2: n-1
    if mod(i,2) != 0
      suma2 = suma2 + 2*y(i);
    else
      suma1 = suma1+ 4*y(i);
    endif
  endfor
  I = h/3 * (y(1) + suma1 + suma2 + y(n));
  
  fprintf("La integral es %d", I);
    
  
endfunction
