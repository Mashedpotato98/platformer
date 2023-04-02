/// @description Insert description here
// You can write your code in this editor
if (e_hp <= 0){
	instance_destroy();	
	instance_destroy(o_alert);	
}

if (o_alert.alert = true){
	move_towards_point(o_player.x,o_player.y,e_spd);
}