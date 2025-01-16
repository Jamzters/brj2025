if ammo >= 1 and reloading = false and sawstate = false
{
	ammo -= 1
	
	with instance_create_layer(x,y,"instances",Obullet)
	{
		direction = other.mousedir
		
		image_angle = direction
		
		speed = 15
	}
}