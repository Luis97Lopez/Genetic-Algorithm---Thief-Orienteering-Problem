function y = fitness(x, objects)
    y = sum(x .* objects.price);
end