num_e = 5;
offset = 50;
for(var i=0; i<num_e; i++){
	var b = scr_enemy_create(offset+i*(room_width-offset*2)/(num_e-1), -100, obj_enemy_shooter_3);
	b.bp.fire_rate = 5;
}