if sawstate = true and teethsoftime = true and TOTactivated = false
{
	mousedir = point_direction(x,y,mouse_x,mouse_y)
	TOTactivated = true
	sawspd += 2
	vsp = vsp + lengthdir_y(sawspd,mousedir)
	
	energy -= TOTenergycost
}