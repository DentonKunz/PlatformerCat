if(global.chest == 2){

if(global.burp == 0){
	instance_create_layer(x+20,y-20,"Instances",obj_burp);
}
if(global.burp == 1){
	instance_create_layer(x-20,y-20,"Instances",obj_burp);
}

}