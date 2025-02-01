if reloadtime <= 0
{
	reloadtime = 1
}

if GOCactivated = true
{
	energy -= GOCenergycost
}

if energy <= 0
{
	energy = 0
	GOCactivated = false
}

if energy < energymax and GOCactivated = false and sawstate = false and reloading = false
{
	energy += energyregain
}

var key_jump = keyboard_check(vk_space)

var key_right = keyboard_check(ord("D"))
var key_left = keyboard_check(ord("A"))
var key_up = keyboard_check(ord("W"))
var key_down = keyboard_check(ord("S"))

var key_sprint = keyboard_check(vk_shift)

if ammo < ammomax
{
	reloading = keyboard_check(ord("R"))
}

var move = key_right - key_left

if sawstate = false and knockbackstate = false
{
mask_index = Splayer
mousedir = point_direction(x,y,mouse_x,mouse_y)
TOTactivated = false
//movement
{
if place_meeting(x,y+vsp,Owall) and key_jump
{
	vsp -= jumpspd
}

if place_meeting(x+hsp,y,Owall)
{	
	while !place_meeting(x+sign(hsp),y,Owall)
	{
		x = x + sign(hsp)
	}
	hsp = 0
}

if place_meeting(x,y+vsp,Owall)
{
	while !place_meeting(x,y+sign(vsp),Owall)
	{
		y = y + sign(vsp)
		inair = true
	}
	vsp = 0
	inair = false
}

x = x + hsp

y = y + vsp

hsp = move * movespd

vsp = vsp + grv
}

if charged = true
{
	sprite_index = Splayercharge
	
	arrow_opacity = 1
}
else
{
	sprite_index = Splayer
}
}

if sawstate = true
{
	if sawspd = 0
	{
		alarm[1]=1
	}
	
	reloading = false
    sprite_index = Splayersaw
    
	//Visual of saw spinning
	{
	if mousedir < 90 or mousedir > 270
	{
		image_angle -= sawspd * 3
	}
	
	if mousedir < 270 and mousedir > 90
	{
		image_angle += sawspd * 3
	}
	
	image_angle = round(image_angle)
	}
	
    mask_index = Splayersaw
	
	var wall = instance_place(x,y+vsp,Owall)
	
    if place_meeting(x,y+vsp,Owall)
    {
        while !place_meeting(x,y+sign(vsp),Owall)
        {
            y = y + sign(vsp)
            inair = true
        }
        
        inair = false
        
        if sawspd > 0
        {
			vsp = 0
            sawspd -= 1
			
			if Oplayer.y < wall.y
			{
			vsp -= random_range(1,sawspd) * sawbounce
			}
			
			if Oplayer.y > wall.y
			{
			vsp += random_range(1,sawspd) * sawbounce
			}
        }
        else
		{
			vsp = 0
		}
    }
	
    x = x + hsp

    y = y + vsp

    vsp = vsp + grv
    
	hsp = lengthdir_x(sawspd,mousedir)
	
    if !alarm[1]{alarm[1]=sawtime}
}

if knockbackstate = true
{
	reloading = false
	sawstate = false
	
	//collision
	{
	if place_meeting(x+hsp,y,Owall)
{	
	while !place_meeting(x+sign(hsp),y,Owall)
	{
		x = x + sign(hsp)
	}
	hsp = 0
}

if place_meeting(x,y+vsp,Owall)
{
	while !place_meeting(x,y+sign(vsp),Owall)
	{
		y = y + sign(vsp)
		inair = true
	}
	vsp = 0
	inair = false
}
	

x = x + hsp

y = y + vsp

}
	vsp = vsp + grv
	
	if Oboss.x > x
	{
		if !place_meeting(x,y+sign(vsp),Owall)
		{
			hsp = -knockbackamount
		}
		else
		{
			hsp = 0
		}
	}
	
	if Oboss.x < x
	{
		if !place_meeting(x,y+sign(vsp),Owall)
		{
			hsp = knockbackamount
		}
		else
		{
			hsp = 0
		}
	}
}
	

if reloading = true
{
	if ammo < ammomax
	{
		movespd = 1
		if !alarm[2]{alarm[2]=reloadtime}
	}
}

if reloading = false
{
	movespd = 2
	alarm[2] = false
}