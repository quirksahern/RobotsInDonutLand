function robot=updateEnergyFound(robot)
%function called if energy source found
if robot.el ~= robot.maxe
robot.el=robot.el+1;
end
end