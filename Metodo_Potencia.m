function Metodo_Potencia
clc
  
A = inv([-10, 4 ; -4, 0])

y_0 = [2; 2];

error = 1;

alpha = y_0;

k = 0;

y_0 = y_0/norm(y_0, Inf)

while error > 0.001 
  
  y_1 = A*y_0
  
  
 
  for i=1 : length(y_0)
    alpha(i) = y_1(i) / y_0(i);
  end
  error=abs(alpha(1)-alpha(2))
  lambda = 1/max(alpha);

 % error = abs((y_1' * y_1)/(y_1' * y_0))
  
  
  
  y_0 = y_1;
  
  k = k + 1;
   
endwhile 

disp(lambda) 

disp(k)

endfunction