if knockbackstate = false and sawstate = false
{
	hp -= 2
	knockbackstate = true
	alarm[0] = false
	charged = false
	arrow_opacity = 0
	
	vsp = -3
	
	if !alarm[3]{alarm[3]=knockbacktime}
	
	if other.dash = true
	{
		hp -= 10
	}
	
	if other.attack1 = true
	{
		hp -= 3
	}
}
