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
