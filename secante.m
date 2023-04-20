function ej1_secante
  tolerancia = 0.03;
  iteracionesMax = 10;
  k = 0;
  a = 1;
  b = 2;
  while(k < iteracionesMax)
    funcA = calc(a);  
    funcB = calc(b);
    
    m = (funcA-funcB)/(a-b);
    
    r = a-funcA/m;
    
    funcR = calc(r);
    
    if(abs(funcR) < tolerancia)
      k = k+1;
      break;
    else
      k = k +1;
      b = a;
      a = r;
    endif
    
  endwhile
  fprintf('La raiz de la funcion es %d y la cantidad de iteraciones fue %d', r, k);
endfunction

function y = calc(x)
  y = x - 2^(-x);
endfunction
