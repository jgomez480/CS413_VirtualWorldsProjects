/// @description Insert description here
// You can write your code in this editor




//if the laser hits the slime, laser disapperas
if (place_meeting (x, y, obj_slime_yellow))
{
	instance_destroy();
}

if (place_meeting (x, y, obj_slime_red))
{
	instance_destroy();
}


if (place_meeting (x, y, obj_slime_blue))
{
	instance_destroy();
}
