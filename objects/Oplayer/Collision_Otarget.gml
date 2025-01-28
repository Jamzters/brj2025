if knockbackstate = false and sawstate = false
{
	knockbackstate = true
	alarm[0] = false
	charged = false
	arrow_opacity = 0
	
	vsp = -3
	
	if !alarm[3]{alarm[3]=knockbacktime}
}