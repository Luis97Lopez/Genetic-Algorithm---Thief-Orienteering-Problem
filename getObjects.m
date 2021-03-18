function objects = getObjects()
    objects(1:7) = struct('name', 'string', ...
                        'price', 'float', ...
                        'weight', 'float');

    objects(1).name = 'Centenarians bag';
    objects(1).price = 750000;
    objects(1).weight = 2.5;

    objects(2).name = 'Wad of $1000 bills';
    objects(2).price = 500000;
    objects(2).weight = 1;

    objects(3).name = 'Large jewelry box';
    objects(3).price = 2750000;
    objects(3).weight = 6;

    objects(4).name = 'Small jewerly box';
    objects(4).price = 950000;
    objects(4).weight = 2.5;

    objects(5).name = 'Stamp collection';
    objects(5).price = 1850000;
    objects(5).weight = 1.5;

    objects(6).name = 'Art Work';
    objects(6).price = 3250000;
    objects(6).weight = 3;

    objects(7).name = 'Gold paperweight';
    objects(7).price = 3950000;
    objects(7).weight = 5;
end