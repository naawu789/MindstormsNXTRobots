function J = get_J( th_b )

rw = 0.032;
L = 0.146;
a = (2*pi/3)*[-1 0 1];

J = [];

J(3,:) = -rw/(3*L)*ones(1,3);
for i = 1:3
   J(1,i) = 2/3*rw*sin(th_b + a(i));
   J(2,i) = -2/3*rw*cos(th_b + a(i));
end


end
