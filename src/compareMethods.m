function compareMethods()
  # valores iniciales para la comparacion
  xi = 0;
  xf = 200;
  yi = 5;
  
  
  tic; # empieza a contar tiempo para rungekutta4
  [xrk,yrk] = rungekutta4(@fun2,xi,xf,yi,1./8); # obtencion de valores con el metodo desarrollado
  val1 = toc; # obtiene el valor del tiempo transcurrido de rungekutta4
  
  tic; # empieza a contar tiempo para ode45
  [xo45,yo45] = ode45(@fun2,[xi,xf],yi); # obtencion de valores con ode45
  val2 = toc; # obtiene el valor del tiempo transcurrido de ode45
  
  tic; # empieza a contar tiempo para ode23
  [xo23,yo23] = ode23(@fun2,[xi,xf],yi); # obtencion de valores con ode23
  val3 = toc; # obtiene el valor del tiempo transcurrido de ode23
  
  figure(3); # desplegar en figura 1
  subplot(2,2,1), plot(xrk,yrk,'-r'), title('Funciones'), xlabel ("x"), ylabel ("f(x)") # plot con resultados de rungekutta4 en subplot 1, grafica que se genera con las funciones
  hold on #
  plot(xo45,yo45,'-b');
  hold on
  plot(xo23,yo23,'-g');
  hold off
  legend("RK","ODE45","ODE23"); # leyenda para grafico de los resultados de las funciones
  axis([100 200 99.8 100.2]);
  
############# Para los graficos de barras en la misma figura ##########################
  xp = [; length(yo45); length(yo23)];  
  subplot(2,2,2),bar([1],[val1],'r')
  hold on
  bar([3],[val2],'b')
  hold on
  bar([5],[val3],'g'),title('Tiempos'), xlabel ("Metodos"), ylabel ("Tiempo (s)"), legend("RK","ODE45","ODE23") # plot de la grafica de barras para comparar los tiempos de los metodos
  hold off
  axis([0 6 0 0.3])
  subplot(2,2,3),bar([1],[length(yrk)],'r')
  hold on
  bar([3],[length(yo45)],'g')
  hold on
  bar([5],[length(yo23)],'b'),title('Pasos'), xlabel ("Metodos"), ylabel ("Cantidad Pasos"), legend("1:RK","2:ODE45","3:ODE23") # plot de la grafica de barras para comparar los pasos usados de los metodos
  hold off
  axis([0 6 0 500])
  
endfunction