//changements d'image_index

if (battery_lvl<=100 and battery_lvl>75)
{
	image_index=4
}
if (battery_lvl<=75 and battery_lvl>50)
{
	image_index=3
}
if (battery_lvl<=50 and battery_lvl>25)
{
	image_index=2
}
if (battery_lvl<=25 and battery_lvl>0)
{
	image_index=1
}
if (battery_lvl<=0)
{
	image_index=0
}

//différents cooldowns batterie

if (oBattery_usage.batt_usage=1)
{
	maxcooldown_battery=600
}
if (oBattery_usage.batt_usage=2)
{
	maxcooldown_battery=400
}
if (oBattery_usage.batt_usage=3)
{
	maxcooldown_battery=200
}
if (oBattery_usage.batt_usage=4)
{
	maxcooldown_battery=50
}

//diminution de la batterie

if (cooldown_battery<=0)
{
	battery_lvl-=1
	cooldown_battery=maxcooldown_battery
}
if (maxcooldown_battery<cooldown_battery)
{
	cooldown_battery=maxcooldown_battery
}
cooldown_battery-=1

if (battery_lvl == 0)
{
	oDoorL.batt_doorL = 0
	oDoorR.batt_doorR = 0
}

//test changement