if charged = false and knockbackstate = false and energy >= sawenergycost
{
	alarm[0] = sawchargetime
}

if sawstate = true
{
	sawstate = false

	image_index = Splayer
	image_angle = 0

	sawspd = 5
	
	y-=2
	vsp = -3
	
	alarm[1]=false
}