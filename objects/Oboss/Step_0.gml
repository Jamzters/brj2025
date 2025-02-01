if debuf_E = true
{
	if !alarm[1]{alarm[1]=shocktime}
	directionchose = 0
	speed = 0
	attack1 = false
}

if movespd = 0
{
	speed = 0
}
//its along story but this patches a bug where boss would be moving when not supposed to

if place_meeting(x,y+movespd,Owall)
{
	switch directionchose
	{
		case 3: directionchose = 4
		break;
		case 4: directionchose = 3
		break;
	}
}

if place_meeting(x,y-movespd,Owall)
{
	switch directionchose
	{
		case 3: directionchose = 4
		break;
		case 4: directionchose = 3
		break;
	}
}

if place_meeting(x+movespd,y,Owall)
{
	switch directionchose
	{
		case 1: directionchose = 2
		break;
		case 2: directionchose = 1
		break;
		case 0: directionchose = 2
		break;
	}
}

if Oplayer.x > x
{
	image_xscale = -1
}
//making boss face left if player is more towards the left

if Oplayer.x < x
{
	image_xscale = 1
}
//making boss face right if player is more towards the right

if !attack3
{
	mask_index = Sbossidle
}
//making it so the mask fits the boss if the 3rd attack isn't active, as 3rd attack depends on it's mask being based off it's sprite

if !alarm[2]{alarm[2]=movetimer}
//alarm[2] determines each action

if attack3 = false and attack1 = false and distance_to_object(Oplayer) < 60 and directionchose != 5 and debuf_E = false
{
	attack1 = true
	image_index = 0
}

if chase = true
{
	directionchose = 0
	
	move_towards_point(Oplayer.x,Oplayer.y,movespd)
	
	if distance_to_point(Oplayer.x,Oplayer.y) >= 1
	{
		movespd = 1 * distance_to_point(Oplayer.x,Oplayer.y)/50
		//making it so that movement speed is increased when futher away from point
	}
	else
	{
		movespd = 0
	}
	
	if!alarm[3]{alarm[3] = chasetime}
	
	if place_meeting(x,y+movespd,Owall)
	{
		y-=1
	}
	//fixing a bug where boss would go below floor while chasing
	
	if attack1 = true
	{
		chase = false
	}
}
//moving towards player

if attack3 = true
{
	mask_index = sprite_index
	chase = false
	directionchose = 0
	//canceling all movement
	
	if dash = false
	{
		if alarm[4] > 20
		{
			sprite_index = Sbossdashprepare
			if Oplayer.x+407 < 580
			{
				move_towards_point(Oplayer.x+407,Oplayer.y-5,movespd)
	
				if distance_to_point(Oplayer.x+407,Oplayer.y-5) >= 1
				{
					movespd = 1 * distance_to_point(Oplayer.x+407,Oplayer.y)/10
					//making it so that movement speed is increased when futher away from point
				}
				else
				{
					movespd = 0
				}
			
				if alarm[4] <= 5
				{
					movespd = 0
				}
			}
			//making it so that boss goes further or closer to players X without going through wall
			
			if Oplayer.x+407 > 580
			{
				move_towards_point(580,Oplayer.y-5,movespd)
	
				if distance_to_point(580,Oplayer.y-5) >= 1
				{
					movespd = 1 * distance_to_point(580,Oplayer.y-5)/10
					//making it so that movement speed is increased when futher away from point
				}
				else
				{
					movespd = 0
				}
			
				if alarm[4] <= 5
				{
					movespd = 0
				}
			}
			//making it so boss stops when too close to wall
			
			}
		else
		{
		image_speed = 1
		image_index = 4
		}
		//for some reason we need this else, I know it does the same thing in animation end but we need this
	
	if !alarm[4]{alarm[4]=beforeattacktime}
	}
	
	if dash = true
	{
		speed = 0
		movespd = 0
	}
	
}

if attack1 = true
{
	attack3 = false
	directionchose = 0
	
	sprite_index = Sbossswipe
	
	move_towards_point(Oplayer.x,Oplayer.y,movespd)
	
	if distance_to_point(Oplayer.x,Oplayer.y) >= 1
	{
		movespd = 1 * distance_to_point(Oplayer.x,Oplayer.y)/10
		//making it so that movement speed is increased when futher away from point
	}
	else
	{
		movespd = 0
	}
}

//directionchose stuff
{
if directionchose = 1
{
	x -= movespd
	
	if deceleration <= 50
	{
		movespd = 8 / deceleration
	
		deceleration += 1 * deceleration/15
	}
	else
	{movespd = 0}
}

if directionchose = 2
{
	x += movespd
	
	if deceleration <= 50
	{
		movespd = 8 / deceleration
	
		deceleration += 1 * deceleration/15
	}
	else
	{movespd = 0}
}

if directionchose = 3
{
	y += movespd
	
	if deceleration <= 50
	{
		movespd = 8 / deceleration
	
		deceleration += 1 * deceleration/15
	}
	else
	{movespd = 0}
}

if directionchose = 4
{
	y -= movespd
	
	if deceleration <= 50
	{
		movespd = 8 / deceleration
	
		deceleration += 1 * deceleration/15
	}
	else
	{movespd = 0}
}

if directionchose = 5
{
	move_towards_point(room_width/2,room_height/2 - 40,movespd)
	
	if distance_to_point(room_width/2,room_height/2 -40) >= 1
	{
		movespd = 1 * distance_to_point(room_width/2,room_height/2 - 40)/10
		//making it so that movement speed is increased when futher away from point
	}
	else
	{
		movespd = 0
	}
}
}