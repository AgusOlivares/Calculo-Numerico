function ej1_regula_falsi
  tolerancia = 0.03;
  iteracionesMax = 10;
  k = 0;
  a = 0;
  b = 2;
  while(k < iteracionesMax)
    funcA = calc(a);  
    funcB = calc(b);
    
    m = (funcA-funcB)/(a-b);
    
    r = a-funcA/m;
    
    funcR = calc(r)
    
    if(abs(funcR) < tolerancia)
      k= k+1;
      break;
      
    endif
    if(funcA * funcR < 0)
      b = r;
    else
      a = r;
    endif
    k = k + 1;
  endwhile
  fprintf('La raiz de la funcion es %d y la cantidad de iteraciones fue %d', r, k);
endfunction

function y = calc(x)
  y = x - 2^(-x);
endfunction
