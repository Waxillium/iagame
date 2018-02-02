/// @description creates an enemy object and puts it in the list of enemies in that wave
/// @func scr_enemy_create(x, y, enemy)
/// @param x
/// @param y
/// @param enemy
//creates the enemy object
var en = instance_create_layer(argument[0], argument[1], "Instances", argument[2]);
en.creator = list;
ds_list_add(list, en);
return en;