#region arrow key movement
left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));
slow = keyboard_check(vk_shift);
if(slow) vel = 5; else vel = 10;
x = lerp(x, x+(vel*(right-left)), spd * global.dt);
y = lerp(y, y+(vel*(down-up)), spd * global.dt);
if(x<0) x=0;
//prevent the player from moving out of the room
if(x>room_width) x = room_width;
if(y<0) y=0;
if(y>room_height) y = room_height;
#endregion
#region shoot bullets
var xvel = (x-xprevious)/global.dt; //get horizontal velocity of player
if(keyboard_check(vk_space) && timer==0){
	timer = 3.5;
	var bul = instance_create_layer(x, y-10, "Instances", obj_bullet);
	bul.color = color; 
	bul.xvel = xvel; //give a portion of the players horizontal velocity to the bullet
}
timer -= min(global.dt, timer);
#endregion
#region stores the player position variables for a trail to be drawn behind the player
trail_timer += global.dt;
while(trail_timer>=1){
	var point = array_create(2, 0);
	point[0] = x;
	point[1] = y+12;
	ds_list_add(trail, point);
	trail_timer--;
}
while(ds_list_size(trail)>=trail_length){
	ds_list_delete(trail, 0);	
}
for(var i = 0; i<ds_list_size(trail)-1; i++){
	var temp = trail[|i];
	temp[1] += (global.vertical_speed*global.dt);
	ds_list_set(trail, i, temp);
}
#endregion
#region pause the game if shot or hit
if(place_meeting(x,y,obj_par_enemy) || place_meeting(x,y,obj_bullet_basic)){
	scr_pause();
	global.gameover = true;
}
#endregion