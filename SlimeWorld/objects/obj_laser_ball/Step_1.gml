/// @description Insert description here
// You can write your code in this editor


//set the obj laser around the player's center 
x = obj_player.x 
y = obj_player.y 

//allows player to control the ball using mouse 
image_angle = point_direction(x, y, mouse_x, mouse_y);


laser_delay = laser_delay - 1

//player can left click and shoot based on the direction of mouse
//including a delay so that the laser appears around every 6 frames
if (mouse_check_button(mb_left))  && (laser_delay <0) 
{
	laser_delay = 10;
	with (instance_create_layer(x-1, y+1, "laser", obj_laser))
	{
		speed = 5; 
		direction = other.image_angle;
		image_angle = direction;
	}
}