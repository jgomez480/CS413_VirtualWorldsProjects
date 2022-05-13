/// @description Initialize Variables
// You can write your code in this editor
invulnerable = false;
invulnerableTimer = 120;

//how fast the character moves 
walkSpeed = 2;

hSpeed = 0;
vSpeed = 0;

// Player Health
playerHP = 3;
blinks = 12;

colLayer = layer_get_id("Tiles_Collision");
tiles = layer_tilemap_get_id(colLayer);