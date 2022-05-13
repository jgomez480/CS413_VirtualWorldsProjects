/// @description Initalize Variables
persistent = false;
id.health = 15;
player_find_dist = 96
movement_duration = 25;
chasing_ms = 2;
moving = false;
hSpeed = 0;
vSpeed = 0;

canShoot = true;

slime_color = 2;
change_slime_sprite(slime_color, true);

colLayer = layer_get_id("Tiles_Collision");
tiles = layer_tilemap_get_id(colLayer);