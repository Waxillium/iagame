/// @func tsin(from, to, time, offset)
/// @desc osciliate between two numbers on a sin wave
/// @param from Minimum number
/// @param to Maximum number
/// @param time Milliseconds for a full cycle
/// @param offset Time offset in milliseconds
var from = argument0;
var to = argument1;
var time = argument2;
var offset = argument3;
var s = sin((((current_time+offset)%time)/time)*pi);
return from + ((s*s) * (to-from));