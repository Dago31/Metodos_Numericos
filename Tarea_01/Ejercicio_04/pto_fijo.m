function xn=pto_fijo(fnc,x0,it)%fnc debe ser ingresado con inline
cont = 0;
while cont<it;%ejecuta el ciclo hasta que se cumpla la cantidad de iteraciones 
    xn=fnc(x0); %evalua la funcion en x0
    x0=xn
    cont=cont+1
end 
cont

end
