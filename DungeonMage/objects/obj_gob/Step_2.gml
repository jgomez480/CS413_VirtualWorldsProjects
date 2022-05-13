/// @description Insert description here
// You can write your code in this editor
if (current_health <= 0) { 
	obj_score_controller.player_score += 1;
	instance_destroy(id);	
}