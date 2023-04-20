function ej1_biseccion
  tolerancia = 0.03;
  iteracionesMax = 10;
  k = 0;
  a = 0;
  b = 2;
  while(k < iteracionesMax)
    funcA = calc(a);  
    funcB = calc(b);
    
    r = (a+b)/2;
    
    funcR = calc(r);
    
    if(abs(funcR) < tolerancia)
      k = 10;
    endif
    if(funcA * funcR < 0)
      b = r;
    else
      a = r;
    endif
    k = k + 1;
  endwhile
  fprintf('La raiz de la funcion es %d', r)
endfunction

function y = calc(x)
  y = x - 2^(-x);
endfunction
