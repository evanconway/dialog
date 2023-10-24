game_world_init();

dialog_data = [
	"I'm an interactable!",
	"I don't have any unique dialog programmed yet.",
	"Make my code in my creation event!"
];

update = function() {
	if (place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space)) {
		dialog_display_set_dialog(new Dialog(dialog_data));
	}
};
