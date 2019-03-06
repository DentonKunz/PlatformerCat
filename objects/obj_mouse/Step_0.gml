timer = irandom(dur-counter);

while(timer>0){
	x+=mousespeed;
	counter+=1;
	timer-=1;
	image_xscale=1;
}

timer = irandom(dur+counter);

while(timer>0){
	x-=mousespeed;
	counter-=1;
	timer-=1;
	image_xscale=-1;
}