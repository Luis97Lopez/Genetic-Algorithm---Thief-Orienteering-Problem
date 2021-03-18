function [c, ceq] = constraint(x, objects)
   c = (x .* objects.weight) - 10;
   ceq = [];
end
