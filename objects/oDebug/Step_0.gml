if (keyboard_check(vk_control)) && (keyboard_check(ord("E")))
{
	oChicca.cooldown_chica = random_range(100, 300)
	oBonnie.cooldown_bonnie = random_range(100, 300)
	oFreddy.cooldown_freddy = random_range(100, 300)
	oFoxy.cooldown_fox = random_range(100, 300)
}
if (keyboard_check(vk_control)) && (keyboard_check(ord("M")))
{
	oBonnie.go_bonnie = 1
}