/// @description creates the wave
/// @func scr_wave_create(timeline, verticalSpeed)
/// @param timeline
/// @param verticalSpeed
//creates the wave object
var inst = instance_create_layer(0, 0, "Instances", obj_wave);
inst.timeline_index = argument0;
inst.verticalSpeed = argument1;
inst.maxMoment = timeline_max_moment(argument0);
inst.timeline_running = true;
return inst;