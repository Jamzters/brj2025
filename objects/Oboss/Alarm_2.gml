if attack3 = false
{
if chase = false and retreat = false
{
	directionchose = irandom_range(1,5)
	speed = 0

	deceleration = 1
	
	if irandom_range(1,20) <= chasechance
	{
		chase = true
		if!alarm[3]{alarm[3]=chasetime}
	}
	
	
	if irandom_range(1,8) = 8 and (x > Oplayer.x or y < Oplayer.y-30) and Oplayer.x < 500
	{
		attack3 = true
		directionchose = 0
		speed = 0
	}
	
//determining if the boss will attack
}
//making the boss chose a random direction

if retreat = true
{
	if Oplayer.x > x
	{
		directionchose = 1
		deceleration = 1
	}
	
	if Oplayer.x < x
	{
		directionchose = 2
		deceleration = 1
	}
}
//fleeing away from the players direction
}