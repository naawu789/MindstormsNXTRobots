function F = get_F(th_b)
% get matrix which transforms desired vehicle movement to motor angle velocities

rw = 0.032;
L = 0.146;
a = (2*pi/3)*[-1 0 1];

F = [];

F = [1/rw*sin(a(1)+th_b), -1/rw*cos(a(1)+th_b), -L/rw;...
    1/rw*sin(a(2)+th_b), -1/rw*cos(a(2)+th_b), -L/rw;...
    1/rw*sin(a(3)+th_b), -1/rw*cos(a(3)+th_b), -L/rw];

end
