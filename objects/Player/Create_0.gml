// for health bar
extra_width = 8;
x1 = Player.x - extra_width;
y_offset = 15;
y1 = Player.y - y_offset;
x2 = Player.x + sprite_width + extra_width;
bar_height = 4;
y2 = y1 + bar_height;
bar_width = x2 - x1 // 248 - x1

canMove = true;
playerspeed = 10;
decay_rate = bar_width * .1 * (1/60); // bar_width outside of scope
growth_rate = decay_rate * 6;
total_health = 100;
player_health = total_health;


// fire rate
fire_rate = 0.5;
fire_timer = 0;
