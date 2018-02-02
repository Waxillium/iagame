//draws the player (fluctuating colors)
r = scr_tsin(0, 255, 1000, 0);
color = make_color_rgb(r, g, b);
draw_sprite_ext(spr_player, 0, x,y, 1, 1, 0, color, 1);

draw_set_color(make_color_rgb(r, g, b));
#region draws the trail behind the player
var width = 10;

for(var i = 0; i<ds_list_size(trail)-1; i++){
	var w = width * ((i+1)/trail_length);
	var p1 = ds_list_find_value(trail, i);
	var p2 = ds_list_find_value(trail, i+1);
	draw_line_width(p1[0], p1[1], p2[0], p2[1], w);
}
#endregion
//draws the pulsating circle behind the player
var radius = scr_tsin(5, 8, 250, 0);
draw_circle(x,y+12, radius, false);

