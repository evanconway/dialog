if (dialog == undefined) exit;

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
