if charged = true
{
	sawstate = true
	hsp = 0
	vsp = 0
	vsp = vsp + lengthdir_y(sawspd,mousedir)
	y-=2
}

alarm[0] = false
charged = false
arrow_opacity = 0