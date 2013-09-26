function donutLandSimulation()
%this is the main function
%initialise donutLand and robots
population=initPopulation();
donutLand=initDoLand();
resetDoLand=donutLand;
%create evolution loop
generations=1;
worseCount=0;
while worseCount<20
%set counters for sim loop
deadRobots=0;
loopCount=0;
%set main loop for run of simulation
while or(deadRobots<10,loopCount<4000)
 %int robotLoopCount
 robotLoopCount=1;%enables loop through of population 
 locationCount=0;
 while robotLoopCount<11
     if population(robotLoopCount).alive==0
         deadRobots=deadRobots+1;
         robotLoopCount=robotLoopCount+1;
     else
     locations=initLocations(); % create array to store robot locations
     %disp(locations())
     %locationCount=0
     population(robotLoopCount)=updateRobotLocation(population(robotLoopCount));
     if locationCount==0
         locations(1).loc=population(robotLoopCount).location; %store 1st location automatically
         %disp ('location 1:');
         %disp(locations(1));
         locationCount=locationCount+1;
     else
         count=1;
         present=0;
         while count<9
             if locations(count).loc==population(robotLoopCount).location %check if location already present in array
                 present=present+1;
             end
             count=count+1;
         end
         if present==0 %if location not present, add
             locations(locationCount).loc=population(robotLoopCount).location;
             %disp('location 2');
             %disp(locations(locationCount));
             
         end
         locationCount=locationCount+1;
     end     
     %update to match genetic profile
     %disp('robotLoopCount');
     %disp(robotLoopCount);
     population(robotLoopCount)=updateRobotGeneric(population(robotLoopCount));
     %check contents of current location square & act
     a=population(robotLoopCount).location(1,1);
     b=population(robotLoopCount).location(1,2);
     energy=chkSqEnergy(donutLand(a,b));
     if energy==1
         population(robotLoopCount)=updateEnergyFound(population(robotLoopCount));
     end
     corrosive=chkSqCorrosion(donutLand(a,b));
     if corrosive==1
         population(robotLoopCount)=updatePatchFound(population(robotLoopCount));
     end
     robotLoopCount=robotLoopCount+1;
     end
 end % end of loop for each move
  %loop needed to move through locations and update square
 sqCount=1;
 while sqCount<9 %this updates the squares visited
     %disp(locations(sqCount).loc);
    % disp(locations(sqCount).loc(1,2));
    if and(locations(sqCount).loc(1,1)>0,locations(sqCount).loc(1,2)>0)
    sq=(locations(sqCount).loc);
    c=sq(1,1);
    d=sq(1,2);
     donutLand(c,d)=updateSquare(donutLand(c,d));
    end
     sqCount = sqCount+1;
 end
 loopCount=loopCount+1;
end
%disp(deadRobots);
%disp(donutLand);
%disp(population(1));
%disp(population(5));
%disp(population(9));
sortedPop=arrangeByFitness(population);
disp('generations');
disp(generations);
disp(sortedPop(10));
bestFitness=sortedPop(10).steps;
tfLoop=1;
tFitness=0;
while tfLoop<11
    tFitness=tFitness+sortedPop(tfLoop).steps;
    tfLoop=tfLoop+1;
end
aFitness=tFitness/10;
disp(bestFitness);
disp(aFitness);
if generations==1
    bestRobot=sortedPop(10);
end
if sortedPop(10).steps>bestRobot.steps
    bestRobot=sortedPop(10);
else
    worseCount=worseCount+1;
end
%disp(sortedPop);
child1=createChild(sortedPop);
child2=createChild(sortedPop);
disp('child1')
disp(child1)
disp('child2')
disp(child2)
sortedPop(1)=child1;
sortedPop(2)=child2;
population=sortedPop;
population=resetPopulation(population);
donutLand=resetDoLand;
generations=generations+1;
end
disp('bestRobot');
disp(bestRobot);
%disp(child1);
end
                          
             
             