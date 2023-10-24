dialog_data = [
	"Greetings traveller.",
	{
		text: "Do you want to go left or right?",
		choices: [
			{
				text: "Left",
				goto: "left",
			},
			{
				text: "Right",
				goto: "right",
			}
		]
	},
	{
		name: "left",
		text: "I agree. Turning left here is smart.",
		goto: "bye"
	},
	{
		name: "right",
		text: "Good choice. That should work out well.",
		goto: "bye"
	},
	{
		name: "bye",
		text: "Make sure to buy supplies before you head out.",
	},
	"Good luck on your journey!"
];