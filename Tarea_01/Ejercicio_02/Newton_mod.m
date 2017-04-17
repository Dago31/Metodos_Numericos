function xn = newton_mod(fnc,x0,tol)%metodo modificado de newton funcion debe ser ingresada con sym
 tic 
 dfnc=diff(fnc);%calcula la derivada de fnc
 f=subs(fnc,x0);%evalua fnc en xo
 df=subs(dfnc,x0);%evalua la derivada de fnc en x0
 cont=0;%cuenta it
 xn=x0-f/df;%ecuacion de newton
 cond=double(abs(xn-x0));%condicion ejercicio 5
 while cond>tol%condicion de parada de newton respecto a una tolerancia
     x0=xn;
     f=double(subs(fnc,x0));
     xn=double(x0-f/df);% actualiza xn con nuevos valores
     cond=double(abs(xn-x0));
     cont=cont+1;
 end 
 toc
 cont
 
end%se usa double en las sentecias para obtener un valor numerico ya que sin este quedaba la ecuacion completa
