clc; close all; clear all;

Kp = 25; Kd = 2; Ki = 20;
Ts_traj = 0.1; dt = 0.005; Ts = dt;
dfft = c2d(tf([1 0],[0.05 1]),dt,'tustin');

tstep = 0.1;
generate_square_trajectory;
generate_circle_trajectory;

load("data.mat")

figure(301); hold on
plot(actual_joint1_pos_square.time, actual_joint1_pos_square.signals.values,'r')
plot(actual_joint2_pos_square.time, actual_joint2_pos_square.signals.values,'g')
plot(actual_joint3_pos_square.time, actual_joint3_pos_square.signals.values,'b')
plot(0.1:0.1:length(joint1_pos_square)/10, joint1_pos_square,'--r')
plot(0.1:0.1:length(joint2_pos_square)/10, joint2_pos_square,'--g')
plot(0.1:0.1:length(joint3_pos_square)/10, joint3_pos_square,'--b')
title('Actual Square Path Joint Positions'); legend('Motor A','Motor B','Motor C');
xlabel('time (seconds)'); ylabel('Angle (rads)');

figure(302); hold on
plot(actual_joint1_pos_circle.time, actual_joint1_pos_circle.signals.values,'r')
plot(actual_joint2_pos_circle.time, actual_joint2_pos_circle.signals.values,'g')
plot(actual_joint3_pos_circle.time, actual_joint3_pos_circle.signals.values,'b')
plot(0.1:0.1:length(joint1_pos_circle)/10, joint1_pos_circle,'--r')
plot(0.1:0.1:length(joint2_pos_circle)/10, joint2_pos_circle,'--g')
plot(0.1:0.1:length(joint3_pos_circle)/10, joint3_pos_circle,'--b')
title('Actual Circle Path Joint Positions'); legend('Motor A','Motor B','Motor C');
xlabel('time (seconds)'); ylabel('Angle (rads)');
