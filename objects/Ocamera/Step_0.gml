if boss = false
{
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 3;
y += (yTo - y) / 3;

x = clamp(x,view_w_half,room_width-view_w_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
}

if boss = true
{
	var targ1 = Oplayer
var targ2 = Otarget

var x_dif = abs((targ1.x - targ2.x)/2)
var y_dif = abs((targ1.y - targ2.y)/2)

//Camera Position
var target_distance = point_distance(targ1.x, targ1.y, targ2.x, targ2.y)
var target_dir = point_direction(targ1.x, targ1.y, targ2.x, targ2.y)

var x_middle = lengthdir_x(x_dif, target_dir)
var y_middle = lengthdir_y(y_dif, target_dir)

var cam_w = camera_get_view_width(view_camera[0])
var cam_h = camera_get_view_height(view_camera[0])

camera_set_view_pos(view_camera[0], targ1.x + x_middle - cam_w/2 ,targ1.y + y_middle - cam_h/2)

x = clamp(x,view_w_half,room_width-view_w_half);
}