Card.delete_all
content_for_cards =[{question: "An object's methods can call/run other methods/functions. (true/false)", 
	answer: "true", deck_id: '1'}, 
	{question: "Does string include the Enumerable method? (yes/no)", answer: "no", deck_id: '1'}, 
	{question: "Can a collection be modified while it's being iterated upon? (yes/no)", answer: "yes", deck_id: '1'},
	{question: "An object can contain data, including references to other objects. (true/false)", answer: "true", deck_id: '1'},
	{question: "Methods that end with an exclamation mark (also called a 'bang') modify the object. (true/false)", answer: "true", deck_id: '1'}, 
	{question: "Global variables start with a $. (true/false)", answer: "true", deck_id: '1'}, 
	{question: "What method converts a float to an integer?", answer: ".to_i", deck_id: '1'}, 
	{question: "What method rounds a floating point?", answer: ".round", deck_id: '1'}, 
	{question: "What method rounds down?", answer: ".floor", deck_id: '1'}, 
	{question: "What method tells you how many characters are in a string?", answer: ".length", deck_id: '1'}]

Deck.create(name: "Ruby")
Card.create(content_for_cards)
