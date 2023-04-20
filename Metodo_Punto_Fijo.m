function Metodo_Punto_Fijo
  X_a = 2;
  X_s = g(X_a);
  e_x = X_s - X_a;
  i = 0
  e = der_g(X_a) * e_x
  
  while e > 0,001
    
    X_a = X_s; 
    X_s = g(X_s);
    
    e_x = X_s - X_a;
    
    if der_g(X_a) < 1
      e = der_g(X_a) * e_x
    endif
    
    i = i + 1
  endwhile
  
  disp(e)
   
endfunction


function y = g(x)
  y = -(x*x)/3 + 1 + x;
endfunction


function der_y = der_g(x)
  der_y = -2*(x)/3 + 1;
endfunction



