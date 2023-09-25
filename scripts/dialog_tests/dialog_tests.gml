function __dialog_tests() {
	var test = new Dialog([
		"Hello world",
		"How are you today?",
		"Tell me about yourself.",
		"The quick brown fox jumps over the lazy dog.",
	]);
	show_debug_message("complete");
}

__dialog_tests();
