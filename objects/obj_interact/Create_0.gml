game_world_init();

update = function() {
	if (place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space)) {
		dialog_display_set_dialog(new Dialog([
			"I'm an interactable!",
			"I don't have any unique dialog programmed yet.",
			"Make my code in my creation event!"
		]));
	}
};