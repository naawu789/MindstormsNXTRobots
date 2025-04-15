%
time = 1:200; tstep = 0.1;

% create position/velocity vectors for trajectory
x_t_square = [0]; y_t_square = [0];
for i = 2:length(time)+1
    if (i <= time(end)/4)
        x_t_square(i) = x_t_square(i-1);
        y_t_square(i) = y_t_square(i-1) + 0.02;
    elseif (i <= time(end)/2)
        x_t_square(i) = x_t_square(i-1) + 0.02;
        y_t_square(i) = y_t_square(i-1);
    elseif (i <= time(end)*3/4)
        x_t_square(i) = x_t_square(i-1);
        y_t_square(i) = y_t_square(i-1) - 0.02;
    else
        x_t_square(i) = x_t_square(i-1) - 0.02;
        y_t_square(i) = y_t_square(i-1);
    end
end

x_vel_square = []; y_vel_square = [];
for i = 1:length(time)
    x_vel_square(i) = (x_t_square(i+1)-x_t_square(i))/tstep;
    y_vel_square(i) = (y_t_square(i+1)-y_t_square(i))/tstep;
end

% use jacobian to compute joint and motor trajectories
motor_vel_square = [];
for i = 1:length(time)
    motor_vel_square(1:3,i) = get_F(0)*[x_vel_square(i); y_vel_square(i); 0];
end

joint1_pos_square = [0]; joint2_pos_square = [0]; joint3_pos_square = [0];
motor1_vel_square = motor_vel_square(1,:);
motor2_vel_square = motor_vel_square(2,:);
motor3_vel_square = motor_vel_square(3,:);

% motor1_vel_square = make_smooth(motor1_vel_square(:), 1);
% motor2_vel_square = make_smooth(motor2_vel_square(:), 1);
% motor3_vel_square = make_smooth(motor3_vel_square(:), 1);


for i = 2:length(time)
    joint1_pos_square(i) = joint1_pos_square(i-1) + motor1_vel_square(i)*tstep;
    joint2_pos_square(i) = joint2_pos_square(i-1) + motor2_vel_square(i)*tstep;
    joint3_pos_square(i) = joint3_pos_square(i-1) + motor3_vel_square(i)*tstep;
end

figure(101); hold on
plot(time*tstep, joint1_pos_square,'r');
plot(time*tstep, joint2_pos_square,'g');
plot(time*tstep, joint3_pos_square,'b');
title('Square Path Joint Positions'); legend('Motor A','Motor B','Motor C');
xlabel('time (seconds)'); ylabel('Angle (rads)');

figure(102); hold on
plot(time*tstep, motor1_vel_square,'r');
plot(time*tstep, motor2_vel_square,'g');
plot(time*tstep, motor3_vel_square,'b');
title('Square Path Motor Velocities'); legend('Motor A','Motor B','Motor C');
xlabel('time (seconds)'); ylabel('Angle (rads)');
