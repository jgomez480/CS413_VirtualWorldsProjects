/// @description Initalize Variables
id.health = 6;
player_find_dist = 48;
movement_duration = 45;
chasing_ms = 1;
moving = false;

slime_color = 0;
change_slime_sprite(slime_color, true);
image_xscale = 0.5;
image_yscale = 0.5;

colLayer = layer_get_id("Tiles_Collision");
tiles = layer_tilemap_get_id(colLayer);