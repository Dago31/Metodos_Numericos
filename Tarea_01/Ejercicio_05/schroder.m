function xn=schroder(fnc,x0,tol)%metodo de schroder ecuacion debe ser ingresada en sym 
    dfnc=diff(fnc);%saca la primera derivada de fnc
    ddfnc=diff(dfnc);%saca la segunda derivada de fnc
    f=double(subs(fnc,x0));%evalua fnc en x0
    df=double(subs(dfnc,x0));
    ddf=double(subs(ddfnc,x0));
    xn=double(x0-f*df/(df^2-f*ddf))%ecuacion de schroder
    cond=double(abs((xn-x0)/xn));%condicion de parada
    cont=0;%cuenta iteraciones
    while cond>tol%ejecuta el ciclo hasta cumplir la condicion de parada respecto a una tolerancia
        x0=xn;%actualiza x0
        f=double(subs(fnc,x0));
        df=double(subs(dfnc,x0));
        ddf=double(subs(ddfnc,x0));
        xn=double(x0-f*df/(df^2-f*ddf))%actualiza xn con los nuevos valores 
        cond=double(abs((xn-x0)/xn));
        cont=cont+1;
    end
    cont
end%se utiliza double para obtener un valor numerico ya que antes quedaba  expresado en una ecuacion