if !place_meeting(x-5,y-10, obj_floor){
	if(obj_cat.x>32){
		image_index = 1;
		image_angle+=10;
		obj_cat.x-=5;
	}
}