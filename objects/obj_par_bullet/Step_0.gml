wiggle_timer += global.dt/60;
var wig_change = sin(wiggle_timer*2*pi*wiggle_interval)*wiggle;
xvel = lengthdir_x(velocity, image_angle + wig_change);
yvel = lengthdir_y(velocity, image_angle + wig_change);
x+=xvel*global.dt;
y+= yvel*global.dt;
if(!point_in_rectangle(x,y, 0, 0, room_width, room_height)){//destroy self if goes outside the screen
	instance_destroy();
}