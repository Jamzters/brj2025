hp = 300

flash = 0

debuf_E = false
shocktime = 20
//time before each shock
debuftime = 200

movespd = 0
//will gradually increase or decrease depending on distance

deceleration = 1

directionchose = 0
//1 = left, 2 = right, 3 = down, 4 = up, 5 = center of the room, 6 = bottomleft, 7 = bottomright, 8 = topleft, 9 = topright

//attack1
{
attack1 = false
//basic swipe
}

//attack2
{
attack2 = false
//summon arrows
}

//attack3
{
attack3 = true
//dash attack
beforeattacktime = 100
//the time before the boss attacks the player in attack3
dash = false
//a bool to determine if the boss did his attack yet or not
}

movetimer = 100
//the interval between each dash of movement

chase = false
//if the boss wants to get closer to the player
chasechance = 6
//chance of boss wanting to chase
chasetime = 75

retreat = false
//if the boss wants to get further away