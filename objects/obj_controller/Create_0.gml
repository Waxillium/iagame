global.dt = 1;
global.dt_mod = 1;
last = scr_wave_create(tl_wave1);
wavenum = 0;
global.paused = false;
global.pause_sprite = noone;
global.gameover = false;
global.minfirerate = 60;
easy = [tl_wave1, tl_wave2, tl_wave3];
medium = [tl_wave4, tl_wave5];
hard = [];
el = array_length_1d(easy);
ml = array_length_1d(medium);
hl = array_length_1d(hard);