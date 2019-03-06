/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y+1, obj_floor) && !place_meeting(x,y+1,obj_platform){
	vspeed_+= gravity_;
	image_index = 1;
}else{
	if keyboard_check_pressed(vk_up){
	vspeed_ = -16;	
	}
	
	
}

if place_meeting(x, y+vspeed_, obj_floor){
	while !place_meeting(x, y+sign(vspeed_), obj_floor) {
		y += sign(vspeed_);	
	}
	vspeed_ = 0;
}

if place_meeting(x, y+vspeed_, obj_platform){
	while !place_meeting(x, y+sign(vspeed_), obj_platform) {
		y += sign(vspeed_);	
	}
	vspeed_ = 0;
}

y+=vspeed_;

if place_meeting(x, y, obj_door) && (global.door>0){
	room_goto_next();
}
if place_meeting(x, y, obj_cpdoor) && (global.door>0){
	room_goto_next();
}