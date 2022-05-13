/// @description Insert description here
// You can write your code in this editor
if (in_fight) {
	if (stamina >= stamina_max && !waiting) {
		state = 0;
		alarm_set(2, 30);
		waiting = true;
	}
	else if (state == 0) { 
		stamina += 2;	
	}
}