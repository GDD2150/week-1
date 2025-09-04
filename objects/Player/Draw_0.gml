draw_self()

extra_width = 8;

//x1 = CameraObj._cam_x;
//x2 = x1 + sprite_width;
//y1 = CameraObj._cam_y;

x1 = Player.x; //- extra_width;
//y_offset = 15;
y1 = Player.y - y_offset;
x2 = Player.x + sprite_width;// + extra_width;
bar_height = 4;
y2 = y1 + bar_height;
bar_width = x2 - x1 // 248 - x1

// decay player health (60 fps by default)
// every second should be 5%

//player_health -= bar_width * .1 * (1/60);
player_health -= decay_rate;

// total health = x1

draw_healthbar(x1, y1, x2, y2, player_health, c_black, c_black, c_red, 0, true, false);

// if player health drops below 0, spawn deathobj
if(player_health < 0) PlayerDeath();