if other.sawstate = true
{
	flash = 3
	hp -= other.sawdmg + round(other.sawspd / 5)
	
	if attack3 = true
	{	
		alarm[4] = false
		attack3 = false
		directionchose = 5
		image_speed = 1
		image_index = 4
	}
	
	if other.chainsofzues = true
	{
		debuf_E = true
		alarm[0]=debuftime
		movespd = 0
	}
	//recoil
	{
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
}