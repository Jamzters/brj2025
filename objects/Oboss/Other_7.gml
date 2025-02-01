if sprite_index = Sbossswipe
{
movespd = 0
directionchose = 5
attack1 = false
speed = 0
	
sprite_index = Sbossidle
}
//the ending to the swipe attack

if sprite_index = Sbossdashprepare
{
	image_speed = 0
	image_index = 4
}

if sprite_index = Sbossdashattack
{
	dash = false
	attack3 = false
	
	directionchose = 5
	
	sprite_index = Sbossidle
	x -= 407
}