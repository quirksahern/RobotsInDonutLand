function resetPop=resetPopulation(resetPop)
n=3;
while n<11
    resetPop(n).alive=1;
    resetPop(n).steps=0;
    resetPop(n).countCasing=0;
    resetPop(n).el=0;
    resetPop(n).energyRes=resetPop(n).edre;
    resetPop(n).pc=resetPop(n).mpc;
    n=n+1;
end
end
    