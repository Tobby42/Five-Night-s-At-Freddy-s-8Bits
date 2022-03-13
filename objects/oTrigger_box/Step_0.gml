//changement de sprite

if (place_meeting(x,y,oMouse))
{
	image_index=0
	meetng += 1
	not_meetng = 0
}
else
{
	image_index=1
	meetng = 0
	not_meetng += 1
}

//utilisation de la batterie

if (meetng == 1)
{
	oBattery_usage.batt_usage += 1
}
if (not_meetng == 1)
{
	oBattery_usage.batt_usage -= 1
}
if (not_meetng>=100)
{
	not_meetng=10
}

//mise en place de la variable light

if image_index == 0
{
	light = 1
}
else
{
	light = 0
}