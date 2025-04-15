%
time = 1:185; tstep = 0.1;

% create positon/velocity vectors for trajectory
x_t_circle = 0; y_t_circle = 0; angle = 0;
for i = 1:length(time)
    angle = angle + 360/length(time);
    x_t_circle(i) = 0.5*cos(angle*pi/180) + 0.5;
    y_t_circle(i) = 0.5*sin(angle*pi/180) + 0.5;
end

x_vel_circle = []; y_vel_circle = [];
for i = 1:length(time)-1
    x_vel_circle(i) = (x_t_circle(i+1)-x_t_circle(i))/tstep;
    y_vel_circle(i) = (y_t_circle(i+1)-y_t_circle(i))/tstep;
end

% use jacobian to compute joint and motor trajectories
motor_vel_circle = [];
for i = 1:length(time)-1
    motor_vel_circle(1:3,i) = get_F(0)*[x_vel_circle(i); y_vel_circle(i); 0];
end
motor1_vel_circle = motor_vel_circle(1,:);
motor2_vel_circle = motor_vel_circle(2,:);
motor3_vel_circle = motor_vel_circle(3,:);

joint1_pos_circle = [0]; joint2_pos_circle = [0]; joint3_pos_circle = [0];
for i = 2:length(motor1_vel_circle)-1
    joint1_pos_circle(i) = joint1_pos_circle(i-1)+motor1_vel_circle(i)*tstep;
    joint2_pos_circle(i) = joint2_pos_circle(i-1)+motor2_vel_circle(i)*tstep;
    joint3_pos_circle(i) = joint3_pos_circle(i-1)+motor3_vel_circle(i)*tstep;
end

% plots
figure(201); hold on
plot(1:length(joint1_pos_circle), joint1_pos_circle,'r')
plot(1:length(joint1_pos_circle), joint2_pos_circle,'g')
plot(1:length(joint1_pos_circle), joint3_pos_circle,'b')
title('Circle Path Joint Positions'); legend('Motor A','Motor B','Motor C');
xlabel('time (seconds)'); ylabel('Angle (rads)');

figure(202); hold on
plot(1:length(motor1_vel_circle), motor1_vel_circle,'r')
plot(1:length(motor2_vel_circle), motor2_vel_circle,'g')
plot(1:length(motor3_vel_circle), motor3_vel_circle,'b')
title('Circle Path Motor Velocities'); legend('Motor A','Motor B','Motor C');
xlabel('time (seconds)'); ylabel('Angle (rads)');

joint1_pos_circle = [0 joint1_pos_circle];
joint2_pos_circle = [0 joint2_pos_circle];
joint2_pos_circle = [0 joint2_pos_circle];
motor_vel_circle = [[0;0;0], motor_vel_circle];
motor1_vel_circle = [0 motor1_vel_circle];
motor2_vel_circle = [0 motor2_vel_circle];
motor3_vel_circle = [0 motor3_vel_circle];
