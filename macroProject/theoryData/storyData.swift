import Foundation


//structure of single quiz
struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    // button navigation
    var load_ques : [Int]
    //specify what is the correct answer
    var questionKey : Int?
    var feedbackString : [String]
    var medal : [String]
}


//final quiz is an array of quizmodel
var myQuiz1 : [QuizModel] = [

    QuizModel(img: "background",
    text: "Hello there, what can I help you with?",
    answer: ["Hi, I am the one who order brochures and banners yesterday", "Hi, here is my receipt", "I need to know the progress of my order"],
    load_ques: [1,1,2],
    questionKey: 0,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "Ok, Is there a problem?",
    answer: ["I need to speed it up", "May I know the progress?", "Yes, I need the order to be completed within three days"],
    load_ques: [3,2,7],
    questionKey: 1,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "We’ve done 3 ream of brochures and the rest are still on progress",
    answer: ["Generally, how long does it take to complete?", "Can you finish it in three days?", "I need to speed it up"],
    load_ques: [5,4,3],
    questionKey: 2,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "How fast do you want?",
    answer: ["three days", "Generally, how long does it take to complete?", "As fast as possible"],
    load_ques: [4,5,5],
    questionKey: 3,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "I’m sorry I don’t think we can, we have another order to proceed",
    answer: ["Well, I guess I have to cancel the order", "Is there anything that you can do to speed it up?", "I will give you extra fee to finish it"],
    load_ques: [6,7,10],
    questionKey: 4,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "The normal production time required is 7 days.",
    answer: ["Too long, I only have three days", "The item will be used at the end of this week. Can it be finished in three days?", "My boss will be angry if it takes too long, how about three days?"],
    load_ques: [4,4,4],
    questionKey: 5,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "We can’t do that sir, it’s already in progress",
    answer: ["Then, done it in three days", "No, I want to cancel it", "Then, is there anything you can do to speed it up?"],
    load_ques: [7,8,7],
    questionKey: 6,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "It’s a bit difficult to fulfill, what if there is an additional fee?",
    answer: ["I am ok with that, how much?", "No, I do not want that", "I will give you $10 charge"],
    load_ques: [10,8,10],
    questionKey: 7,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "If you want to cancel, at least pay the finished products",
    answer: ["Ok, here is your money", "No, whatever", "Alright, how much the additional fee is?"],
    load_ques: [101,9,10],
    questionKey: 8,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "Sir, if you leave without paying, I’ll call the cops!",
    answer: ["Ok, sorry, here is your money", "Then complete it in three days", "Go ahead, I do not care"],
    load_ques: [101,7,101],
    questionKey: 9,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "I think we can take $15 for the surcharge and we will finish it on time",
    answer: ["I am ok with that", "Lower it, $10 maximum", "We can only give you an extra $10, how about that?"],
    load_ques: [102,11,11],
    questionKey: 10,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "That’s too low, how about $12?",
    answer: ["I am ok with that", "Then, I think I have to cancel it", "If you agree with $10, I will recommend you to our company as a partner"],
    load_ques: [12, 6, 13],
    questionKey: 11,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "Alright sir, please come back here again in 3 days",
    answer: ["Yes, thank you", "I will, see you on three days", "Yes, Pleasure to work with you"],
    load_ques: [102,102,102],
    questionKey: 12,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"]),

    QuizModel(img: "background",
    text: "What a good deal, I take that",
    answer: ["Alright, I will come back here in 3 days", "Thank you, it is a pleasure to work with you", "Deal, thank you for your cooperation"],
    load_ques: [100,100,100],
    questionKey: 13,
    feedbackString: ["None", "None", "None"],
    medal: ["full_medal", "no_medal", "half_medal"])


]
