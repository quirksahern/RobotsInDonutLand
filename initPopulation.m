function pop=initPopulation ()
n = 1;
while (n<11) %initialises population, fields 1-10  form chromosome
field1 = 'edra'; value1 = randi([1,8],1,1); %energy depletion rate
field2 = 'maxe'; value2 = randi([0,8],1,1); %max energy
field3 = 'edre'; value3 = randi([0,50],1,1); %energy depletion reserve
field4 = 'paccra'; value4 = randi([1,8],1,1); %protective casing repair rate
field5 = 'mpc'; value5 = randi([0,8],1,1); %max protective casing
field6 = 'pcrre'; value6 = randi([0,50],1,1); %protective casing repair reserve
field7 = 'ss'; value7 = randi([0,2],1,1); %sensor strength
field8 = 'el'; value8 = {0}; %energy level
field9 = 'pc'; value9 = value5; %protective casing level
field10 = 'direction'; value10 = randi([1,8],1,1);
field11 = 'location'; value11 = [20 20];
field12 = 'alive'; value12 = {1};
field13 = 'energyRes'; value13 = value3;%enables reserve to be re-set
field14 = 'countCasing'; value14={0};
field15 = 'steps'; value15={0};
pop(n) = struct(field1,value1,field2,value2,field3,value3,field4,value4,field5,value5,field6,value6,field7,value7,field8,value8,field9,value9,field10,value10,field11,value11,field12,value12,field13,value13,field14,value14,field15,value15);
%pop(n)
n=n+1;
end
end

    

