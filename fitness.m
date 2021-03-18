function y = fitness(x, objects)
    y = -1 * sum(x .* reshape([objects.price], [1 7]));
end

