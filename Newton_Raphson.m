function ej1_Newton_Raphson
  tolerancia = 0.03;
  iteracionesMax = 10;
  k = 0;
  a = 2;
  while(k < iteracionesMax)
    funcA = calc(a);  
    
    m = 1+2^(-a)*log(2);
    
    r = a-funcA/m;
    
    funcR = calc(r);
    
    if(abs(funcR) < tolerancia)
      k = k+1;
      break;
    else
      k = k +1;
      a = r;
    endif
    
  endwhile
  fprintf('La raiz de la funcion es %d y la cantidad de iteraciones fue %d', r, k);
endfunction

function y = calc(x)
  y = x - 2^(-x);
endfunction
