dialog_display_set_dialog(new Dialog([
	"You must choose",
	{
		text: "A or B?",
		choices: [
			{
				text: "A",
				goto: "a"
			},
			{
				text: "B",
				goto: "b"
			}
		]
	},
	{
		name: "a",
		text: "You chose A.",
		choices: [
			{
				text: [],
				goto: "after"
			}
		]
	},
	{
		name: "b",
		text: "You chose B.",
		choices: [
			{
				text: [],
				goto: "after"
			}
		]
	},
	{
		name: "after",
		text: "This dialog branch is complete."
	},
	"Goodbye"
]));
