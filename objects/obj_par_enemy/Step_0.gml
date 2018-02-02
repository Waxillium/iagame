if(place_meeting(x,y, obj_bullet) && y>0){
	instance_create_layer(x,y, "Instances", obj_honeycomb);
	global.points++;
	instance_destroy();
}
if(y<10){
	y+=5*global.dt;	
}
if(y>room_height){
	instance_destroy();	
}