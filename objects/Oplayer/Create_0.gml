movespd = 2

jumpspd = 4

hsp = 0
vsp = 0
grv = 0.2

inair = false

charged = false

mousedir = point_direction(x,y,mouse_x,mouse_y)

knockbacktime = 40
knockbackamount = 2
knockbackstate = false

energy = 30
energymax = 30
energyregain = 0.01

//gun
{
ammomax = 12
ammo = 12
reloadtime = 120

reloading = false

gundmg = 1

gearofclouds = true
GOCactivated = false
GOCenergycost = 0.1

if gearofclouds = true
{
	gundmg += 2
}
}

//saw
{
arrow_opacity = 0
sawenergycost = 5

sawstate = false
sawtime = 300
sawspd = 5
sawdmg = 3
sawbounce = 1
sawchargetime = 60

chainsofzues = true
spinningframe = false
teethsoftime = true
TOTactivated = false
TOTenergycost = 3

if chainsofzues = true
{
	sawdmg += 3
	sawspd -= 1
	sawenergycost += 2
}

if spinningframe = true
{
	reloadtime -= 20
}

if teethsoftime = true
{
	sawdmg += 2
	sawspd += 1
	sawchargetime -= 4
}

}







