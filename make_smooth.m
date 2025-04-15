function [slowed] = make_smooth(original,slow_down)

amax = 10;
dt = 0.005;

vel = 0;

slowed_t(1) = original(1);

for i = 1:length(original)-amax
    vel = (original(i+amax) - original(i));
    slowed_t(i+1) = slowed_t(i) + vel;
end

count = 2;
slowed = [];
slowed(1) = 0;

for i = 2:length(slowed_t)
    for j = 1:slow_down
        slowed(count) = (slowed_t(i)-slowed_t(i-1))/slow_down + slowed(count-1);
        count = count+1;
    end
end


end
