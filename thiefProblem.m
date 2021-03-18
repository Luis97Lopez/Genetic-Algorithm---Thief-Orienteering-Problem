%   UASLP - INTELIGENCIA ARTIFICIAL - 17 DE MARZO 2021
%   LUIS ALBERTO LÓPEZ ROMERO
%   PROBLEMA DEL LADRÓN AMBICIOSO

% Obtenemos los objetos
objects = getObjects();

% Obtenemos la función fitness
fitFcn = @(x)fitness(x,objects);

% Obtenemos la función de restricción
cnstFcn = @(x)constraint(x, objects);

% Obtenemos el número de las variables = número de objetos
s = size(objects);
numberOfVariables = s(2);

% Se crean los límites superiores binarios: lower = 0, upper = 1
lb = zeros(1,numberOfVariables);
ub = ones(1, numberOfVariables);

% Todos los parámetros serán enteros
IntCon = 1:numberOfVariables;

% Las opciones adecuadas pueden variar, aquí se modifican las generaciones
% y se imprime el resultado en dos plots
options = optimoptions(@ga, 'MaxStallGenerations', 50, ...
                            'MaxGenerations', 200, ...
                            'PlotFcn', {@gaplotbestf,@gaplotstopping});

% Obtenemos los objetos que se van a robar llamando la función
y = ga(fitFcn, numberOfVariables, [],[],[],[], lb, ub, cnstFcn, ...
    IntCon, options);
            
            
            