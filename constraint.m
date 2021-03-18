function [c, ceq] = constraint(x, objects)
   pesos = sum(x .* reshape([objects.weight], [1 7]));
   c = pesos - 10;
   ceq = [];
end
