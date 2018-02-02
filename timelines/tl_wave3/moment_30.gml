num_e = 5;
offset = 5;
for(var i=0; i<num_e; i++){
	var en = scr_enemy_create(offset+i*(room_width-offset*2)/(num_e-1), -100, obj_enemy_diver_diag);
	if(i=2){ en.dir = 270; en.image_angle = en.dir;} else if(i>2){ en.dir = 225; en.image_angle = en.dir;}
}