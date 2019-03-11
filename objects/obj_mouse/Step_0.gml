timer+=1;
shoot = irandom(20);

if(shoot == 0 && dir == 0){
	instance_create_layer(x,y,"Instances_1",obj_laser_R);
}
if(shoot == 0 && dir == 1){
	instance_create_layer(x,y,"Instances_1",obj_laser_L);
}

if(timer<=dur+intDelay){
	x+=mousespeed;
	counter+=1;
	dir = 0;
	image_xscale=1;
}

if(counter>0 && timer>dur+intDelay){
	x-=mousespeed;
	counter-=1;
	dir = 1;
	image_xscale=-1;
}

if(counter == 0 && timer>intDelay+dur*2){
	timer = 0;	
}