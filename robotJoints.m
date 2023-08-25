% Make sure to not run this file.

% ******* We are focusing on the first quadrant only. ******

% First, we set up a function to set up the distance formula and identify
% angles. We will refer angle one as Theta1 and angle two as Theta2.
function [theta1, theta2] = robotJoints(xVal,yVal)
distance = sqrt(xVal^2 + yVal^2);
% Arm links of lengths given in meters
armA = 0.8;
armB = 0.2;

% If the distance from the origin happens to be greater than one, then it
% becomes a final solution. Here, we will use the conditional structure of
% the if and end command.
if (distance >= armA + armB)
    theta2 = 0;

    theta1 = atan(yVal/xVal);
    if xVal < 0
        theta1 = pi + theta1
    end
% printing message to show the angles' value in radians.
    fprintf("From the x-axis, Theta One in radians will be: %f\n", theta1); % The first quadrant is considered when finding the angle values.
    fprintf("From arm A, Theta Two in radians will be: %f\n", theta2);
    return;
end
% Next If the distance from the origin is less than 0.6, then the distance with
% the second arm will be the solution.
if (distance <= armA - armB && distance ~= 0)
    theta2 = pi;

    theta1 = atan(yVal/xVal);
    theta1 = atan(yVal/xVal);
    if xVal < 0
        theta1 = pi + theta1
    end
% printing message again but in context for the second arm distance.
    fprintf("From the x-axis, Theta One in radians will be: %f\n", theta1);
    fprintf("From arm B, Theta Two in radians will be: %f\n", theta2);
    return;
end

% Thus If the distance becomes zero, then there are infinitely many
% solutions for theta one in which theta two will forever be pi. 
if (distance == 0)
    theta2 = pi;
    fprintf("Infinitely many solutions exist such as:\n");
    theta1=0;
    fprintf("Solution 1:\n");
    fprintf("From the x-axis, theta one in radians will be: %f\n", theta1);
    fprintf("From arm A, theta two in radians will be: %f\n", theta2);
    fprintf("Solution Two:\n");
    theta1 = pi;
    fprintf("From the x-axis, theta one in radians will be: %f\n", theta1);
    fprintf("From arm A, theta two in radians will be: %f\n", theta2);
    return;
end

% Based on the written portion of arithmetics, we will test if the distance
% lies within the range the robot arm can reach. 
fprintf("There exists more than one solution!\n");

% let's begin setting up the functions for the angle values within both
% triangles. 
% Conn2 will be the angle facing conversely of Arm B while conn1 will be
% the angle facing conversely of Arm A in this specific triangle.

conn1 = acos( (-armA^2+distance^2+armB^2)/(2*distance*armB) );
conn2 = acos( ( armA^2+distance^2-armB^2)/(2*distance*armA) );
connd = acos( ( armA^2-distance^2+armB^2)/(2*armB    *armA) );
% connd is the angle facing conversely of the distance.

% Here, we will perform the tangent method with respect to the origin so we can convert the angles.
thetaOrigin = atan(yVal/xVal);
fprintf("Solution 1:\n");

% Here, the sum of the first angle is the tangent method angle and angle
% converse of arm B.
firstTheta1 = conn2+thetaOrigin;
fprintf("From the x-axis, theta one in radians will be: %f\n", firstTheta1);

% here, the first angle converse to the distance becomes negative to find other
% angle. 
firstTheta2 = -connd;
fprintf("From arm A, theta two will be: %f\n", firstTheta2);

% We repeat the same coding method for the second set of angle solutions.
fprintf("Solution 2:\n");
secondTheta1 = -conn2+thetaOrigin;
fprintf("From the x-axis, theta one in radians will be: %f\n", secondTheta1);

% Furthermore, we add the thetaOrigin to the angle converse in distance to
% solve the second angle.
secondTheta2 = connd;
fprintf("From arm A, theta two in radians will be: %f\n", secondTheta2);
theta1 = [firstTheta1, secondTheta1];
theta2 = [firstTheta2, secondTheta2];
return;

end
% We end the code. 
