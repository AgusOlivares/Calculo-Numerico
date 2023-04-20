function retval = metodo_de_newton_raphson (r)
  
  error = 0.0000005
  
  syms x
  
  f = x^3+2*x-9
  d = diff(f)
  while 1
    r = r - (double(subs(f,x,r))/double(subs(d,x,r)));
    if abs(double(subs(f,x,r))) <= error
      break
    endif
  endwhile
  retval = r;
  
endfunction