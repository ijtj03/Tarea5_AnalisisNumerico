function graphByPass() # metodo usado para graficar los pasos de metodo desarrollado
  x = []; # vector para puntos en x
  y = []; # vector para puntos en y 
  h = 1./8; # valor de h inicial
  figure(1);
  while(h >= 1./1024)  # iteraciones para variar los pasos
    [xs,ys] = rungekutta4(@fun1,0,1,1,h); # recoleccion de valores "x" y "y" del metodo desarrollado
    x= [x,h]; #
    y= [y,((abs(2.-ys(end))./2).*100)]; #
    h = h./2; # disminucion por factor de 2 del h actual
   
    plot(xs,ys);  # para colocarlo en la grafica
    xlabel ("x"); # nombre eje x para la grafica
    ylabel ("fun(x)"); # nombre eje y para la grafica
    title ("Funcion que resuelve la ED"); # nombre de la grafica
    hold on;
  endwhile
  legend("h=1/8","h=1/16","h=1/32","h=1/64","h=1/128","h=1/256","h=1/512","h=1/1024");
  hold off;
  figure(2); # desplegar en figura 2
  semilogy(x,y,'-b'); # grafico en ejes semilogaritmicos
  xlabel ("Pasos"); # nombre eje x
  ylabel ("Error  (%)"); # nombre eje y
  title('Grafica de error en funcion de pasos')
endfunction