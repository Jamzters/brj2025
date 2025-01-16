image_angle += wheelspeed

//angle stuff
{
if image_angle > 360
{
	image_angle = 0
}

if image_angle > 0 and image_angle < 45
{
	section1 = true
}
else
{
	section1 = false
}

if image_angle > 45 and image_angle < 90
{
	section2 = true
}
else
{
	section2 = false
}

if image_angle > 90 and image_angle < 135
{
	section3 = true
}
else
{
	section3 = false
}

if image_angle > 135 and image_angle < 180
{
	section4 = true
}
else
{
	section4 = false
}

if image_angle > 180 and image_angle < 225
{
	section5 = true
}
else
{
	section5 = false
}

if image_angle > 225 and image_angle < 270
{
	section6 = true
}
else
{
	section6 = false
}

if image_angle > 270 and image_angle < 315
{
	section7 = true
}
else
{
	section7 = false
}

if image_angle > 315 and image_angle < 360
{
	section8 = true
}
else
{
	section8 = false
}
}

