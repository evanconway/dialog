function dialog_display_init() {
	global.dialog_display = instance_create_depth(0, 0, 0, obj_dialog_display);
}

/*
TODO: find a way to initialize the obj_dialog_display object within this script
file instead of manually putting it in a room
*/

/**
 * Set new dialog to be displayed.
 *
 * @param {Struct.Dialog} new_dialog
 */
function dialog_display_set_dialog(new_dialog) {
	global.dialog_display.dialog = new_dialog;
}


function dialog_display_update() {
	var dialog = global.dialog_display.dialog;
	if (keyboard_check_pressed(vk_space)) {
		if (dialog_is_at_end(dialog)) {
			global.dialog_display.dialog = undefined;
			exit;
		}
		dialog_advance(dialog);
	} else if (keyboard_check_pressed(vk_down)) {
		dialog_choice_increment(dialog);
	} else if (keyboard_check_pressed(vk_up)) {
		dialog_choice_decrement(dialog);
	}
}
