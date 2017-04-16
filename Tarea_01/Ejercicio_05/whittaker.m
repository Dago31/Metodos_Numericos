function xn=whittaker(fnc,x0,tol)%funcion de whittaker fnc debe ser ingresada con sym
    dfnc=diff(fnc);%calcula la primera derivada de fnc
    ddfnc=diff(dfnc);%calcula la segnda derivada de fnc
    f=double(subs(fnc,x0));%evalua fnc en x0
    df=double(subs(dfnc,x0));
    ddf=double(subs(ddfnc,x0));
    xn=double(x0-f*(2-(f*ddf/df^2))/(2*df));%ecuacion de whitaker
    ab=double(abs((xn-x0)/xn));%condicion ejercicio 5
    cont=0;
    while ab>tol%ejecuta el ciclo hastan que se deje de cumplir la condicion
        x0=xn
    	f=double(subs(fnc,x0));
        df=double(subs(dfnc,x0));
        ddf=double(subs(ddfnc,x0));
        xn=double(x0-f*(2-(f*ddf/df^2))/(2*df));%actualiza xn con los valores nuevos de x0
        ab=double(abs((xn-x0)/xn));
    	cont=cont+1
    end
    cont
end%se usa doueble en las sentecias para obtener un valor numerico
