if charged = true and energy >= sawenergycost
{
	sawstate = true
	hsp = 0
	vsp = 0
	vsp = vsp + lengthdir_y(sawspd,mousedir)
	y-=3
	
	energy -= sawenergycost
}

alarm[0] = false
charged = false
arrow_opacity = 0