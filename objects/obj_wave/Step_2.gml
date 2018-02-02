timer += global.dt;
timeline_speed = global.dt;
timeline_running = !global.paused;

if(ds_list_empty(list) && timeline_position>timeline_max_moment(timeline_index)){
	instance_destroy();	
}