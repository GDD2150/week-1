var extra_width = 8;
var x1 = Player.x - extra_width;
var y_offset = 15;
var y1 = Player.y - y_offset;
var x2 = Player.x + sprite_width + extra_width;
var bar_height = 4;
var y2 = y1 + bar_height;

// decay player health (60 fps by default)
// every second should be 5%
var bar_width = x2 - x1 // 248 - x1
player_health -= bar_width * .1 * (1/60);
show_debug_message(player_health)

// total health = x1
draw_healthbar(x1, y1, x2, y2, player_health, c_black, c_black, c_red, 0, true, false);