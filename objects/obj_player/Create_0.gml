game_world_init();

update = function() {
	var vel = 5;
	if (keyboard_check(vk_up)) y -= vel;
	if (keyboard_check(vk_down)) y += vel;
	if (keyboard_check(vk_left)) x -= vel;
	if (keyboard_check(vk_right)) x += vel;
};
