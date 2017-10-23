function compareMethods()
  xi = 0;
  xf = 200;
  yi = 5;
  disp("--------------------------------------------");
  disp("RungeKutta4:");
  tic;
  [xrk,yrk] = rungekutta4(@fun2,xi,xf,yi,1./8); 
  toc;
  disp("Points:"),disp(length(yrk));
  disp("--------------------------------------------");
  disp("ODE45:");
  tic;
  [xo45,yo45] = ode45(@fun2,[xi,xf],yi);
  toc;
  disp("Points:"),disp(length(yo45));
  disp("--------------------------------------------");
  disp("ODE23:");
  tic;
  [xo23,yo23] = ode23(@fun2,[xi,xf],yi);
  toc;
  disp("Points:"),disp(length(yo23));
  disp("--------------------------------------------");
  plot(xrk,yrk,'-r');
  hold on
  plot(xo45,yo45,'-b');
  hold on
  plot(xo23,yo23,'-g');
  hold off
  legend("RK","ODE45","ODE23");
  axis([100 200 99.8 100.2]);
endfunction