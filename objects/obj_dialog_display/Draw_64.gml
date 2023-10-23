if (dialog == undefined) exit;

if (keyboard_check_pressed(vk_space)) {
	if (dialog_display_is_at_end()) {
		global.dialog_display.dialog = undefined;
		exit;
	}
	dialog_display_advance();
} else if (keyboard_check_pressed(vk_down)) {
	dialog_display_choice_increment()
} else if (keyboard_check_pressed(vk_up)) {
	dialog_display_choice_decrement()
}

draw_set_font(fnt_generic);
draw_set_color(c_white);
draw_set_alpha(1);

var height = string_height("A");
var cursor = 0;

// feather ignore GM1041
draw_text(0, cursor * height, dialog_get_text(dialog));

cursor += 1;

var choices = dialog_get_choices_text(dialog);

for (var i = 0; i < array_length(choices); i++) {
	draw_text(30, cursor * height, choices[i]);
	if (i == dialog_get_choice(dialog)) draw_text(0, cursor * height, ">");
	cursor += 1;
}
