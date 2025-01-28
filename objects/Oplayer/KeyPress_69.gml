if gearofclouds = true and energy >= GOCenergycost
{
switch GOCactivated
{
	case false: GOCactivated = true
	break;
	
	case true: GOCactivated = false
	break;
}
}