function dialog_display_init() {
	global.dialog_display = instance_create_depth(0, 0, 0, obj_dialog_display);
}

/*
TODO: find a way to initialize the obj_dialog_display object within this script
file instead of manually putting it in a room
*/

function dialog_display_set_dialog(new_dialog) {
	global.dialog_display.dialog = new_dialog;
}

function dialog_display_advance() {
	dialog_advance(global.dialog_display.dialog);
}

function dialog_display_set_choice(new_choice) {
	dialog_set_choice(global.dialog_display.dialog, new_choice)
}

function dialog_display_choice_increment() {
	dialog_choice_increment(global.dialog_display.dialog);
}

function dialog_display_choice_decrement() {
	dialog_choice_decrement(global.dialog_display.dialog);
}

function dialog_display_is_at_end() {
	return dialog_is_at_end(global.dialog_display.dialog);
}
