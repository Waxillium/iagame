num_e = 6;
offset = 15;
for(var i=0; i<num_e; i++){
	scr_enemy_create(offset+i*(room_width-offset*2)/(num_e-1), -100, obj_enemy_shooter_helicopter_e);
}