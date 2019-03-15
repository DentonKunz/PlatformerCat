/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y+1, obj_floor) && !place_meeting(x,y+1,obj_floor2) && !place_meeting(x,y+1,obj_platform) && !place_meeting(x,y+1,obj_chest){
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

if place_meeting(x, y+vspeed_, obj_floor2){
	while !place_meeting(x, y+sign(vspeed_), obj_floor2) {
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

if place_meeting(x, y+vspeed_, obj_chest) && (global.chest == 0){
	while !place_meeting(x, y+sign(vspeed_), obj_chest) {
		y += sign(vspeed_);	
	}
	vspeed_ = 0;
	global.chest = 1;
}

y+=vspeed_;

if place_meeting(x, y, obj_door) && (global.door>0){
	room_goto_next();
}
if place_meeting(x, y, obj_cpdoor) && (global.door>0){
	room_goto_next();
}