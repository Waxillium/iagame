global.paused = !global.paused;
if(global.paused){
	//store a screenshot of the screen
	var w  = camera_get_view_width(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	global.pause_sprite = sprite_create_from_surface(application_surface, 0, 0, w, h, false, false, 0, 0);
	instance_deactivate_object(obj_game_object);
} else {
	sprite_delete(global.pause_sprite);
	instance_activate_object(obj_game_object);	
}