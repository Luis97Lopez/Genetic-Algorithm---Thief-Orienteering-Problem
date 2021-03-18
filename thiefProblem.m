%   UASLP - INTELIGENCIA ARTIFICIAL - 17 DE MARZO 2021
%   LUIS ALBERTO L�PEZ ROMERO
%   PROBLEMA DEL LADR�N AMBICIOSO

% Obtenemos los objetos
objects = getObjects();

% Obtenemos la funci�n fitness
fitFcn = @(x)fitness(x,objects);

% Obtenemos la funci�n de restricci�n
cnstFcn = @(x)constraint(x, objects);

% Obtenemos el n�mero de las variables = n�mero de objetos
s = size(objects);
numberOfVariables = s(2);

% Se crean los l�mites superiores binarios: lower = 0, upper = 1
lb = zeros(1,numberOfVariables);
ub = ones(1, numberOfVariables);

% Todos los par�metros ser�n enteros
IntCon = 1:numberOfVariables;

% Las opciones adecuadas pueden variar, aqu� se modifican las generaciones
% y se imprime el resultado en dos plots
options = optimoptions(@ga, 'MaxStallGenerations', 50, ...
                            'MaxGenerations', 200, ...
                            'PlotFcn', {@gaplotbestf,@gaplotstopping});

% Obtenemos los objetos que se van a robar llamando la funci�n
y = ga(fitFcn, numberOfVariables, [],[],[],[], lb, ub, cnstFcn, ...
    IntCon, options);
            
            
            