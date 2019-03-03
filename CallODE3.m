function [ t,y ] = CallODE3( )
%Función para Resolver una Ecuación Difrencial (ODE)
%previamente definida
%   Se definen el dominio del tiempo en el cual se trabajará (tspan)
%   Se define las condiciones iniciales para un tiempo cero t=0,y=N [y(0)=N] 
%   Se definen las salidas de los diferenciales para resolverlas según los
%   algoritmos "ode45, ode15s, ode23, ode113"
    
tspan = [0 1.5];

y0 = 0;

[t, y ]= ode113(@ODE3,tspan,y0);

plot(t,y)
grid

legend('dt/dy = e^2^ysin(t)');
title('Ecuación Diferencial Ordinaria');
xlabel('Eje t');
ylabel('Eje y');
end
