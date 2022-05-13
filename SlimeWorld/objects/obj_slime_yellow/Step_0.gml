/// @description Movement Logic

// If close enough to player chase them, otherwise wander
if (distance_to_object(obj_player) < player_find_dist)  {
	change_slime_sprite(slime_color, true);
	if (obj_player.x - x >= 0) { image_xscale = 0.5; }
	else { image_xscale = -0.5; }
	
	move_towards_point(obj_player.x, obj_player.y, chasing_ms);
}
else {
	if (!moving) {
		speed = 0;
		//Choose random direction to move and random amount of tiles to move
		var tiles_to_move = irandom(1) + 1;
		var amt_to_move = 32 * tiles_to_move; 
		var xMove = 0, yMove = 0;
		var duration = movement_duration * tiles_to_move;
		var mvmt_direction = irandom(3);
		var count = 0;
		
		
		// Checks to see if the movement direction will collide with the boundaries if so, it will check each 
		// direction to see which will keep it within the bounds
		do {
			xMove = 0;
			yMove = 0;
			switch(mvmt_direction) {
			case 0:
				xMove = amt_to_move;
				break;
			case 1:
				yMove = amt_to_move;
				break;
			case 2:
				xMove = -amt_to_move;
				break;
			case 3:
				yMove = -amt_to_move;
				break;
			}
			show_debug_message("x: " + string(xMove));
			show_debug_message(tilemap_get_at_pixel(tiles, x + xMove, y + yMove));
			mvmt_direction = count;
			count++;
		} until (tilemap_get_at_pixel(tiles, x + xMove, y + yMove) == 0 || count >= 4);
		
		if (count >= 4) {
			xMove = 0;
			yMove = 0;
		}

		
		// If moving left or right, flip image
		if (mvmt_direction == 0) { image_xscale = 0.5; }
		else if (mvmt_direction == 2) { image_xscale = -0.5; }
		TweenEasyMove(x, y, x + xMove, y + yMove, 0, duration, EaseLinear);
		
		moving = true;
		alarm_set(0, duration);
	}
}