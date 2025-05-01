

draw_text_transformed_color(window_get_width()/2-300, window_get_height()/2, "Narrative Game. Press Space to start.", 2, 2, 0, textColor,textColor,textColor,textColor,1);

if(canDraw)
{
	if(playedSound && blinkTimes == 10)
	{
		room_goto(room_main);
	}
	
	if(!playedSound && blinkTimes == 10)
	{
		
		
		playedSound = true;
		
		canDraw = false;
	}
	
	
	
	if(blinkTimes < 10 && haveSquare)
	{
		draw_rectangle_color(0,0,window_get_width(),window_get_height(),c_black,c_black,c_black,c_black,false);
		blinkTimes ++;
	}
	haveSquare = !haveSquare;
	
	if(!haveSquare)
	{
		textColor = c_red;
		
		if(blinkTimes == 10)
		{
			canDraw = false;
		}
	}
	

}
