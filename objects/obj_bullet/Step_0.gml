#region movement
y += yvel*global.dt;
x += xvel*global.dt;
if(combinable)
xvel-=xvel*.075*global.dt;//slow down the bullets x velocity over time
//if the bullet goes off screen, delete it
if(!point_in_rectangle(x,y, 0, 0, room_width, room_height)){//destroy self if goes outside the screen
	instance_destroy();
}
#endregion
#region bullet fusion and explosion
var col = instance_place(x,y, obj_bullet);
if(instance_exists(col)){
	if(image_xscale+col.image_xscale>maxscale){
		for(var i=0; i<explosiveness; i++){
			var bul = instance_create_layer(x,y, "Instances", obj_bullet);
			var ang = 360/explosiveness*i + 90;
			bul.image_angle = ang;
			var v = 20/3;
			bul.xvel = lengthdir_x(v, ang);
			bul.yvel = lengthdir_y(v, ang);
			bul.color = color;
			bul.combinable = false;
		}
		instance_destroy();
	} else if(combinable && col.combinable){
		image_xscale+=col.image_xscale;
		image_yscale+=col.image_yscale;
		x = (x+col.x)/2;
		y = (y+col.y)/2;
		damage += col.damage;
		instance_destroy(col);
	}	
}
#endregion