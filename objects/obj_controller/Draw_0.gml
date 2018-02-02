if(keyboard_check_pressed(ord("P"))){
	scr_pause();	
}
if(global.paused){
	draw_sprite(global.pause_sprite, 0, 0, 0);
}