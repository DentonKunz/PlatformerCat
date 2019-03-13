draw_text_transformed(10,10,"Room: ",1,1,0);
draw_text_transformed(60,10,roomNum,1,1,0);
roomNum = room+1;
if(roomNum ==3){roomNum = "Checkpoint";}
if(room+1>3){roomNum = room;}

if(global.chest == 2 && room == 2){
	draw_text_transformed(500,100,"Press Space for Burp!",2,2,0);
}