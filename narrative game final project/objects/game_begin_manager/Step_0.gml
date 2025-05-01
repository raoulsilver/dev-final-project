if (keyboard_check_pressed(vk_space)) {
	room_goto(room_main);	
}

if(countDown > 0)
{
	countDown --;
	if(keyboard_check(vk_anykey))
	{
		typed = true;
	}
	
}else{
	
	countDown = maxCountDown;
	if(!typed)
	{
		canDraw = true;
	}
}


