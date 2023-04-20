function Jacobi
  A = [ -3,1,-2 ; 4,-5,0 ; 1,-3,6 ];
  
  b = [-2;5;6];
  
  x = [0;0;0];
  x_sum = [0;0;0];
  
  "Falta analizar el error y la condicion de iterar"
  
  
  for i=1:3
    sum = 0;
    for j=1:3
      if (j~=i)
        sum = sum + -A(i,j)*x(j);
      endif
    endfor
   x_sum(i) = (b(i)-sum)/A(i,i) 
  endfor
  x_sum
endfunction