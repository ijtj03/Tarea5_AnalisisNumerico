function [xs,ys] = rungekutta4 ( f , xi , xf , yi ,h) 
  xs = [xi];
  ys = [yi];
  while(xi<xf) # mientras el xi sea inferior a xf
   xi = xi + h; # se define el valor de xi
   ##### Donde las K son las pendientes de los intervalos ######
   k1 = f(xi,yi); 
   k2 = f(xi + 1./2.*h , yi + 1./2.*k1.*h);
   k3 = f(xi + 1./2.*h , yi + 1./2.*k2.*h);
   k4 = f(xi + h , yi + k3.*h);  
   yi = yi + 1./6 .* (k1 + 2.*k2 + 2.*k3 + k4).*h;
   
   xs = [xs,xi];
   ys = [ys,yi];
   if(h >= 1./1024)     
    h = h./2;           
   endif                     
  endwhile
endfunction
