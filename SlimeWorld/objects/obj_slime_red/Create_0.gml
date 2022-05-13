/// @description Initalize Variables
persistent = false;
id.health = 8;
player_find_dist = 64;
movement_duration = 35;
chasing_ms = 1.5;
jump_speed = 15;
can_jump = true;
jumping = false;
can_leap = true;
moving = false;

slime_color = 1;
change_slime_sprite(slime_color, true);
image_xscale = 0.5;
image_yscale = 0.5;

colLayer = layer_get_id("Tiles_Collision");
tiles = layer_tilemap_get_id(colLayer);