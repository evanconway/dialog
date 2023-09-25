/**
 * Get a new Dialog instance.
 *
 * @param {Array<Any>} steps
 */
function Dialog(steps) constructor {
	step = "";
	choice = 0;
	language_index = 0;
	
	static get_blank_step = function() {
		return {
			name: "",
			text: [], // Array<String>
			choices: [], // Array<{ text: Array<String>, goto: String}> or undefined
			data: undefined,
		}
	};
	
	/**
	 * If given array of strings returns same array. If given a string return new array containing only the given string.
	 *
	 * @param {string, Array<string>} text_string_or_array
	 * @return {Array<string>} 
	 */
	static get_text_from_text = function(text_string_or_array) {
		// feather disable GM1045 once
		if (is_array(text_string_or_array)) return text_string_or_array;
		if (is_string(text_string_or_array)) return [text_string_or_array];
		show_error("get_text_from_text was given input that is neither an array or a string", true);
	};
	
	var steps_length = array_length(steps);
	dialog_steps = array_create(steps_length);
	
	var step_names = ds_map_create();
	
	// iterate over given steps and convert shorthand steps to full steps
	for (var i = 0; i < steps_length; i++) {
		dialog_steps[i] = get_blank_step();
		dialog_steps[i].name = $"auto_{i}";
		dialog_steps[i].choices = undefined; // set undefined to assume only choice is next step
		if (is_struct(steps[i])) {
			if (variable_struct_exists(steps[i], "name")) dialog_steps[i].name = steps[i].name;
			dialog_steps[i].text = get_text_from_text(steps[i].text);
			if (variable_struct_exists(steps[i], "choices")) dialog_steps[i].choices = steps[i].choices;
			if (variable_struct_exists(steps[i], "data")) dialog_steps[i].data = steps[i].data;
		}
		if (is_array(steps[i]) || is_string(steps[i])) {
			dialog_steps[i].text = get_text_from_text(steps[i]);
		}
		ds_map_set(step_names, dialog_steps[i].name, undefined);
	}
	
	// define choices for steps with undefined choices, and ensure defined choices are valid
	for (var i = 0; i < steps_length - 1; i++) {
		if (dialog_steps[i].choices == undefined) dialog_steps[i].choices = [{ text: [], goto: dialog_steps[i + 1].name }];
		for (var c = 0; c < array_length(dialog_steps[i].choices); c++) {
			var choice_name = dialog_steps[i].choices[c].goto;
			if (!ds_map_exists(step_names, choice_name)) show_error($"step name {dialog_steps[i].name} index {i} choice {c} has invalid goto {choice_name}", true);
		}
	}
	
	ds_map_destroy(step_names);
}
