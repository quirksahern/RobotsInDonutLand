function robots=arrangeByFitness(robots)
i=1;
while i<8
    j=1;
    while j<9
        if robots(j).steps > robots(j+1).steps
            temp = robots(j);
            robots(j)=robots(j+1);
            robots(j+1)=temp;
        end
        j=j+1;
    end
    i=i+1;
end
end
            