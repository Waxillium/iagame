num_e = 5;
offset = 5;
for(var i=0; i<num_e; i++){
	instance_create_layer(offset+i((room_width-(offset*(num_e-1)))/(num_e-1)), -100, "Instances", obj_enemy_shooter_basic);
}