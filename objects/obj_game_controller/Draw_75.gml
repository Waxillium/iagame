draw_set_color(c_white);
draw_set_font(font0)
var str = "score: " + string(global.points);
var f = "fps: " + string(fps);
draw_text_transformed(10,5, str + "\n" + f, 1, 1, 0);
//makes the background to fluctuate colors
var r = scr_tsin(0, 60, 40000, 0);
var bg = layer_background_get_id("background");
layer_background_blend(bg,make_color_rgb(r, 10, 24));