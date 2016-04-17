Card.delete_all
content_for_cards =[{question: "An object's methods can call/run other methods/functions.", answer: "True", deck_id: '1'}, {question: "What core object includes the Kernel module?", answer: "Object", deck_id: '1'}, {question: "Does string include the Enumerable method?", answer: "No", deck_id: '1'}, {question: "Can a collection be modified while it's being iterated upon?", answer: "Yes", deck_id: '1'}]

Card.create(content_for_cards)
