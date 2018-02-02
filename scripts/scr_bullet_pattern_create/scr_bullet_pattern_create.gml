/// @description creates a bullet pattern object
/// @func scr_bullet_pattern_create(num_bullets, bullet_sprite_index, angle, angle_change, angle_range, fire_rate, wiggle, wiggle_interval, bullet_speed)
/// @param num_bullets
/// @param bullet_sprite_index
/// @param angle
/// @param angle_change
/// @param angle_range
/// @param fire_rate
/// @param wiggle
/// @param wiggle_interval
/// @param bullet_speed
var inst = instance_create_layer(x, y, "Instances", obj_bullet_pattern);
inst.num_bullets = argument[0];
inst.bullet_sprite_index = argument[1];
inst.angle = argument[2];
inst.angle_change = argument[3];
inst.angle_range = argument[4];
inst.fire_rate = argument[5];
inst.wiggle = argument[6];
inst.wiggle_interval = argument[7];
inst.bullet_speed = argument[8];
inst.target = self;
return inst;