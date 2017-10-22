function [x,y] = graphByPass()
  x = [];
  y = [];
  h = 1./8;
  while(h != 1./1024)
    [xs,ys] = rungekutta4(@fun1,0,1,1,h);
    x=[x,h];
    y=[y,((abs(2.-ys(end))./2).*100)];
    h = h./2;
  endwhile
  semilogy(x,y,'-b');
  xlabel ("Pasos");
  ylabel ("Error");
endfunction