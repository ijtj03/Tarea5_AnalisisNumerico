function graphED (h)
  [xs,ys] = rungekutta4(@fun1,0,1,1,h);
  plot(xs,ys,'-b');
  xlabel ("x");
  ylabel ("fun(x)");
  title ("Funcion que resuelve la ED");
endfunction
