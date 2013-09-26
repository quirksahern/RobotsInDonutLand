function parent=findRouletteParent(sortedRobots)
%select position on wheel
roulette=randi([1 360],1,1);
%identify robot for parent
if and(roulette>=1,roulette<7)
    parent=sortedRobots(1);
end
if and(roulette>=7,roulette<14)
    parent=sortedRobots(2);
end
if and(roulette>=14,roulette<34)
    parent=sortedRobots(3);
end
if and(roulette>=34,roulette<60)
    parent=sortedRobots(4);
end
if and(roulette>=60,roulette<93)
    parent=sortedRobots(5);
end
if and(roulette>=93,roulette<132)
    parent=sortedRobots(6);
end
if and(roulette>=132,roulette<178)
    parent=sortedRobots(7);
end
if and(roulette>=178,roulette<230)
    parent=sortedRobots(8);
end
if and(roulette>=230,roulette<289)
    parent=sortedRobots(9);
end
if and(roulette>=289,roulette<=360)
    parent=sortedRobots(10);
end
end