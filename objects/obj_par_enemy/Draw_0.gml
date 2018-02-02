//fluctuate enemy colors
g = scr_tsin(0, 255, 1000, 0);
color = make_color_rgb(r,g,b);
draw_sprite_ext(sprite_index, 0, x, y,1,1,0, color, 1);