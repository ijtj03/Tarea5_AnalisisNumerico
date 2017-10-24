function graphED (h)
  [xs,ys] = rungekutta4(@fun1,0,1,1,h); # valores de "x" y "y" obtenidos desde la funcion rungekutta de cuarto orden 
  
  figure(1); # desplegar en figura 1
  plot(xs,ys,'-b');  # para colocarlo en la grafica
  xlabel ("x"); # nombre eje x para la grafica
  ylabel ("fun(x)"); # nombre eje y para la grafica
  title ("Funcion que resuelve la ED"); # nombre de la grafica
  
endfunction
