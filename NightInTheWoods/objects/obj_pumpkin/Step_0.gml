/// @description Increase Stamina
if (in_fight) {
	if (stamina >= stamina_max && !waiting) {
		alarm_set(2, 30);
		waiting = true;
	}
	else if (state == 0) { 
		stamina += 2;	
	}
}