% Robot Joints Script
% Make sure to run this file only to get the code working. 
clear; clc; close all;

% For the 1st set, the given positions to find the closest point are the
% following.
xVal = 0.7;
yVal = 0.6;
fprintf("First Trial with x = %f and y = %f\n", xVal, yVal);
[theta1, theta2] = robotJoints(xVal, yVal);
fprintf("\n");

% For the 2nd set, the given positions to find the closest point are the
% following. 
xVal = 0.2;
yVal = 0.4;
fprintf("Second Trial with x = %f and y = %f\n", xVal, yVal);
[theta1, theta2] = robotJoints(xVal, yVal);
fprintf("\n");

% For the 3rd set, the given positons to find the closest point are the
% following. 
xVal = 1.0;
yVal = 0.8;
fprintf("Third Trial with x = %f and y = %f\n", xVal, yVal);
[theta1, theta2] = robotJoints(xVal, yVal);
fprintf("\n");

% For the opitmal position closest to the
% point (0.9, 0.2), we have the following to set up. 
xVal = 0.9;
yVal = 0.2;
fprintf("Fourth Trial with x = %f and y = %f\n", xVal, yVal);
[theta1, theta2] = robotJoints(xVal, yVal);
fprintf("\n");

% End of our coding script. 