function robot=updateRobotLocation(robot)
%disp(robot.direction);
%if robot.direction(1,1)==[2]
    %disp('this is a test');
%end
%decisions based on direction
if robot.direction(1,1)==[1] %N
        %disp('north');
        if robot.location(1)==1
             robot.location(1)=40;
        else
             robot.location(1)=robot.location(1)-1;
        end
end
if robot.direction(1,1)==[2] %NE
         %disp('north_e');
         if robot.location(1)==1
              robot.location(1)=40;
         end
         if and(robot.location(1)>1,robot.location(1)<=40)
                robot.location(1)=robot.location(1)-1;
         end
        if robot.location(2)==40
            robot.location(2)=1;
        else
            robot.location(2)=robot.location(2)+1;
        end
end
if robot.direction(1,1)==[3] %E
        %disp('east');
        if robot.location(2)==40
            robot.location(2)=1;
        else
            robot.location(2)=robot.location(2)+1;
        end
end
if robot.direction(1,1)==[4] %SE
        %disp('southEast');
        if robot.location(1)==40
           robot.location(1)=1;
        else
           robot.location(1)=robot.location(1)-1;
        end
        if robot.location(2)==40
            robot.location(2)=1;
        else
            robot.location(2)=robot.location(2)+1;
        end
end
if robot.direction(1,1)==[5] %S
        %disp('south');
        if robot.location(1)==40
             robot.location(1)=1;
        else
            robot.location(1)=robot.location(1)+1;
        end
end
if robot.direction(1,1)==[6] %SW
        %disp('south_west');
        if robot.location(1)==40
             robot.location(1)=1;
        else
            robot.location(1)=robot.location(1)+1;
        end
        if robot.location(2)==1
            robot.location(2)=40;
        else
            robot.location(2)=robot.location(2)-1;
        end
end
if robot.direction(1,1)==[7] %W
        %disp('west');
        if robot.location(2)==1
            robot.location(2)=40;
        else
            robot.location(2)=robot.location(2)-1;
        end
end
if robot.direction(1,1)==[8] %NW
      %disp('northWest');
      if robot.location(1)==1
           robot.location(1)=40;
      else
          robot.location(1)=robot.location(1)-1;
      end
      if robot.location(2)==1
          robot.location(2)=40;
      else
          robot.location(2)=robot.location(2)-1;
      end
end
%error catching
if robot.location(1)<1
    robot.location(1)=1;
end
if robot.location(2)>40
    robot.location(1)=40;
end
if robot.location(2)<1
    robot.location(2)=1;
end
if robot.location(2)>40
    robot.location(2)=40;
end
end