if ammo >= 1 and reloading = false and sawstate = false
{
	if GOCactivated = false
	{
		ammo -= 1
	}
	
	with instance_create_layer(x,y,"instances",Obullet)
	{
		direction = other.mousedir
		
		image_angle = direction
		
		speed = 15
	}
}

if ammo >= 1 and reloading = false and sawstate = true and spinningframe = true
{
	if GOCactivated = false
	{
		ammo -= 1
	}
	
	with instance_create_layer(x,y,"instances",Obullet)
	{
		direction = random_range(0,360)
		
		image_angle = direction
		
		speed = 15
	}
}