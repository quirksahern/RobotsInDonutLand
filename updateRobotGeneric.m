function robot=updateRobotGeneric(robot)
if or(robot.el<0, robot.pc<0)%check life critical stats
    robot.alive=0; % set robot to dead
else %robot still alive so
%update counters
robot.steps=robot.steps+1;
%check if casing needs updating
robot.pcrre=robot.pcrre-robot.paccra;
if robot.pcrre<0
    if robot.pc < robot.mpc
        robot.pc=robot.pc+1;
        robot.el=robot.el-1;
    end
    robot.pcrre=robot.energyRes;
end
%check if energy levels need updating
robot.edre=robot.edre-robot.edra; %subtract depletion rate from reserve
if robot.edre<=0
    robot.el=robot.el-1; %reduce energy level
    robot.edre=robot.energyRes; %reset energy reserve
end
end
end