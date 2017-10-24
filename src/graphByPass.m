function graphByPass() # metodo usado para graficar los pasos de metodo desarrollado
  x = []; # vector para puntos en x
  y = []; # vector para puntos en y 
  h = 1./8; # valor de h inicial
  while(h != 1./1024)  # iteraciones para variar los pasos
    [xs,ys] = rungekutta4(@fun1,0,1,1,h); # recoleccion de valores "x" y "y" del metodo desarrollado
    x= [x,h]; #
    y= [y,((abs(2.-ys(end))./2).*100)]; #
    h = h./2; # disminucion por factor de 2 del h actual
  endwhile
  figure(2); # desplegar en figura 2
  semilogy(x,y,'-b'); # grafico en ejes semilogaritmicos
  xlabel ("Pasos"); # nombre eje x
  ylabel ("Error  (%)"); # nombre eje y
  title('Grafica de error en funcion de pasos')
endfunction