timer = 0; //create particle system
stars = part_system_create_layer("Instances", false); 
part_system_depth(stars, 50); 
part_system_automatic_update(stars, false); 

//create a star particle 
minspd = 2.5; 
maxspd = 10; 
star = part_type_create(); 
part_type_alpha1(star, .5); 
part_type_shape(star, pt_shape_disk); 
part_type_orientation(star, 0, 0, 0, 0, 1); 
part_type_size(star, 0.015, 0.05, 0, 0); 
part_type_speed(star, minspd, maxspd, 0, 0); 
part_type_direction(star, 270, 270, 0, 0); 
part_type_life(star, (room_height/minspd)+10, (room_height/minspd)+10); 

//and god said let there be light 
star_emitter = part_emitter_create(star);
part_emitter_region(star, star_emitter, -30, room_width+30, -100, 0, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(star, star_emitter, stars, 1.5); 
