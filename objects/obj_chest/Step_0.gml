/// @description Insert description here
// You can write your code in this editor
if(global.chest == 1){
	image_index = 1;
	global.chest = 2;
	instance_create_layer(x, y-60,"Instances",obj_cake);
}