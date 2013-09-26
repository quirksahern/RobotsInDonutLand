function child=createChild(sortedPop)
%create child struct
field1 = 'edra'; value1 = {0}; %energy depletion rate
field2 = 'maxe'; value2 = {0}; %max energy
field3 = 'edre'; value3 = {0}; %energy depletion reserve
field4 = 'paccra'; value4 = {0}; %protective casing repair rate
field5 = 'mpc'; value5 = {0}; %max protective casing
field6 = 'pcrre'; value6 = {0}; %protective casing repair reserve
field7 = 'ss'; value7 = {0}; %sensor strength
field8 = 'el'; value8 = {0}; %energy level
field9 = 'pc'; value9 = value5; %protective casing level
field10 = 'direction'; value10 = {0};
field11 = 'location'; value11 = [20 20];
field12 = 'alive'; value12 = {1};
field13 = 'energyRes'; value13={0};%enables reserve to be re-set, set after crossover
field14 = 'countCasing'; value14={0};
field15 = 'steps'; value15={0};
child = struct(field1,value1,field2,value2,field3,value3,field4,value4,field5,value5,field6,value6,field7,value7,field8,value8,field9,value9,field10,value10,field11,value11,field12,value12,field13,value13,field14,value14,field15,value15);
%find parents for crossover
%parent1=findRouletteParent(sortedPop);
parent1=sortedPop(10);
%disp(parent1);
%parent2=findRouletteParent(sortedPop);
parent2=sortedPop(9);
%disp(parent2);
%find crossover point
crossPoint=randi([1,10],1,1);
loop=1;
%wholly inelegant but cannot think of better
while loop<crossPoint
    if loop==1
        child.edra=parent1.edra;
    end
    if loop==2
        child.maxe=parent1.maxe;
    end
    if loop==3
        child.edre=parent1.edre;
    end
    if loop==4
        child.paccra=parent1.paccra;
    end
    if loop==5
        child.mpc=parent1.mpc;
    end
    if loop==6
        child.pcrre=parent1.pcrre;
    end
    if loop==7
        child.ss=parent1.ss;
    end
    if loop==10
        child.direction=parent1.direction;
    end
    loop=loop+1;
end
while loop<11
      if loop==1
        child.edra=parent2.edra;
      end
    if loop==2
        child.maxe=parent2.maxe;
    end
    if loop==3
        child.edre=parent2.edre;
    end
    if loop==4
        child.paccra=parent2.paccra;
    end
    if loop==5
        child.mpc=parent2.mpc;
    end
    if loop==6
        child.pcrre=parent2.pcrre;
    end
    if loop==7
        child.ss=parent2.ss;
    end
    if loop==10
        child.direction=parent2.direction;
    end
    loop=loop+1;
end
child.energyRes=child.edre;
%cross over complete, child needs to be mutated
%disp(child)
%mutationCount=randi([1,10],1,1);
mutationCount=5;
mutLoop=1;
while mutLoop<mutationCount+1
    mutateField=randi([1,10],1,1);
     if mutateField==1
        %child.edra=randi([1,8],1,1);
        if child.edra<8
            child.edra=child.edra+1;
        else
            child.edra=1;
        end
    end
    if mutateField==2
        %child.maxe=randi([0,8],1,1);
        if child.maxe<8
            child.maxe=child.maxe+1;
        else
            child.maxe=0;
        end
    end
    if mutateField==3
       %child.edre=randi([0,50],1,1);
        if child.edre<50
            child.edre=child.edre+1;
        else
            child.edre=0;
        end
    end
    if mutateField==4
        %child.paccra=randi([1,8],1,1);
        if child.paccra<8
            child.paccra=child.paccra+1;
        else
            child.paccra=1;
        end
    end
    if mutateField==5
        %child.mpc=randi([0,8],1,1);
        if child.mpc<8
            child.mpc=child.mpc+1;
        else
            child.mpc=1;
        end
    end
    if mutateField==6
        %child.pcrre=randi([0,50],1,1);
        if child.pcrre<50
            child.pcrre=child.pcrre+1;
        else
            child.pcrre=1;
        end
    end
    if mutateField==7
        child.ss=randi([0,2],1,1);
    end
    if mutateField==10
        %child.direction=randi([1,8],1,1);
        if child.direction<8
            child.direction=child.direction+1;
        else
            child.direction=1;
        end
    end
    mutLoop=mutLoop+1;
end
    if child.energyRes~=child.edre
        child.energyRes=child.edre;
    end
    child.pc=child.mpc;
 %   disp(child)
end