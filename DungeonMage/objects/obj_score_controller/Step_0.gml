/// @description Insert description here
// You can write your code in this editor
if (player_score >= 25) {
	obj_player.bolt_split = true;
}
if (player_score >= 50) {
	room_goto(rm_win);
}