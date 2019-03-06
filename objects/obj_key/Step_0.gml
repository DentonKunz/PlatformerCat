/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_cat){
		global.door = 1;
		instance_destroy(obj_key);
}

timer+=0.25;

if(timer<10){
	y+=0.25;
}

if(timer>10){
	y-=0.25;
}

if(timer>20){
	timer = 0;	
}
