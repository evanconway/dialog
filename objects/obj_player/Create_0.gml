game_world_init();

update = function() {
	var interact_touching = instance_place(x, y, obj_interact);
	if (keyboard_check_pressed(vk_space) && interact_touching != noone) {
		dialog_display_set_dialog(new Dialog(interact_touching.dialog_data));
	} else {
		var vel = 5;
		if (keyboard_check(vk_up)) y -= vel;
		if (keyboard_check(vk_down)) y += vel;
		if (keyboard_check(vk_left)) x -= vel;
		if (keyboard_check(vk_right)) x += vel;
	}
};
