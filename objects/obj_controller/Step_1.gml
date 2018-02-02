//delta timing prevents variable framerate from affecting gamespeed
global.dt = delta_time*(60/1000000)*global.dt_mod;
if(global.paused && keyboard_check_pressed(ord("R"))){
	instance_activate_all();
	sprite_delete(global.pause_sprite);
	game_restart();
}