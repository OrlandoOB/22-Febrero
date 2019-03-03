function [ dtdy ] = ODE3( t,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Definición de Constantes

%Ecuación Difrencial
dtdy = exp(2*y)*sin(t);

end
