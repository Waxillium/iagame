var l = scr_enemy_create(30, -100, obj_enemy_shooter_2);
l.bp.angle_change = 15; l.bp.fire_rate = 5;
var r = scr_enemy_create(room_width-30, -100, obj_enemy_shooter_2);
r.bp.angle_change = -15; r.bp.fire_rate = 5;
var lr = scr_enemy_create(-10, room_height/2 - 50, obj_enemy_diver_shooter_basic);
lr.dir = 0; lr.image_angle = lr.dir;
lr.velocity = 4; lr.bp.bullet_speed = 3+lr.velocity; 
var rl = scr_enemy_create(room_width+10, room_height/2 - 50, obj_enemy_diver_shooter_basic);
rl.dir = 180; rl.image_angle = rl.dir;
rl.velocity = 4; rl.bp.bullet_speed = 3+rl.velocity;
var lr2 = scr_enemy_create(-10, room_height/2 - 100, obj_enemy_diver_shooter_basic);
lr2.dir = 0; lr2.image_angle = lr2.dir;
var rl2 = scr_enemy_create(room_width+10, room_height/2 - 100, obj_enemy_diver_shooter_basic);
rl2.dir = 180; rl2.image_angle = rl2.dir;                                                                                                                                                                                   "modelName": "GMEvent",
                "mvc": "1.0",
                "IsDnD": false,
                "collisionObjectId": "00000000-0000-0000-0000-000000000000",
      