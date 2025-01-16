if other.sawstate = true
{
	flash = 3
	hp -= other.sawspd
	
	if other.x > x
	{
		other.hsp = 1
		other.mousedir = 0
		if other.sawspd > 0
		{
			other.sawspd -= 1
		}
	}
	
	if other.x < x
	{
		other.hsp = -1
		other.mousedir = 180
		if other.sawspd > 0
		{
			other.sawspd -= 1
		}
	}
	
	//hitting from the top
	if other.y > y - 10
	{
		other.vsp += 2
	}
	
	//hitting from the bottom
	if other.y < y +10
	{
		other.vsp -= 3
	}
}