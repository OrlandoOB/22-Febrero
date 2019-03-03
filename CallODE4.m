function [ x,y ] = CallODE4( )
%Función para Resolver una Ecuación Difrencial (ODE)
%previamente definida
%   Se definen el dominio del tiempo en el cual se trabajará (tspan)
%   Se define las condiciones iniciales para un tiempo cero t=0,y=N [y(0)=N] 
%   Se definen las salidas de los diferenciales para resolverlas según los
%   algoritmos "ode45, ode15s, ode23, ode113"
    
tspan = [0 10];

y0 = 1;

[x, y ]= ode113(@ODE4,tspan,y0);

plot(x,y)
grid

legend('dx/dy = e^x/(2y)');
title('Ecuación Diferencial Ordinaria');
xlabel('Eje x');
ylabel('Eje y');
end
