timer += global.dt;
while(timer>=1){//only update 60 times per second
	part_system_update(stars);
	timer--;
}