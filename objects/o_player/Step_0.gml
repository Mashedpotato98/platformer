
//movement
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var dash = keyboard_check_pressed(vk_shift);
var side = 1;

var p_gravity = 2;
var jump_force = 42;
var d_speed = 3;

p_speed = 3;

var vspd = 0;


if (dash = 1){
	p_speed = 30;
}


var hInput = (right - left) * p_speed;


vspd += p_gravity;

vspd = clamp(vspd,-3,3);


if (jump = 1) and (place_meeting(x,y + vspd,o_instances)){
	vspd -= jump_force;
	if (!place_meeting(x + hInput,y,o_instances)){	
		x += hInput * d_speed;
	}
}


move_and_collide(hInput,vspd,o_instances,4,0,0,p_speed);

if (keyboard_check(ord("D"))){
	side = 1;
}
if (keyboard_check(ord("A"))){
	side = 2;
}

if (mouse_check_button_pressed(mb_right)) and (side = 1){
	instance_create_layer(x + 10,y - 10,"player_and_enemy",o_slash);	
}

if (mouse_check_button_pressed(mb_right)) and (side = 2){
	instance_create_layer(x - 50,y - 10,"player_and_enemy",o_slash);	
}

