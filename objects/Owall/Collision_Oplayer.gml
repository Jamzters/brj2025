if other.sawstate = true
{
	if other.x > x
	{
		other.hsp = 3
		other.mousedir = 0
		if other.sawspd > 0
		{
			other.sawspd -= 1
		}
	}
	
	if other.x < x
	{
		other.hsp = -3
		other.mousedir = 180
		if other.sawspd > 0
		{
			other.sawspd -= 1
		}
	}
}