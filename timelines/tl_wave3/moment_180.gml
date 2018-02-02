num_e = 5;
offset = 15;
for(var i=0; i<num_e; i++){
	var b = scr_enemy_create(offset+i*(room_width-offset*2)/(num_e-1), -100, obj_enemy_shooter_3);
	var bp = b.bp;
	bp.angle = 270;
	bp.fire_rate = 6;
	bp.bullet_speed = 3;
	if(i==2){
		bp.angle_change = 0;
	} else if(i>2){
		bp.angle_change = -15;
	}
}