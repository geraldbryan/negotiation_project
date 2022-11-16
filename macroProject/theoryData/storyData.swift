import Foundation


//structure of single quiz
struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    // button navigation
    var load_ques : [Int]
    //specify what is the correct answer
    var questionKey : Int64?
    var feedbackString : [String]
    var medal : [String]
    var feedbackEachAnswer : [String]
    var styleUsed : [String]
}


//final quiz is an array of quizmodel
var myQuiz1 : [QuizModel] = [

    QuizModel(img: "explain",
    text: "Hello there, what can I help you with?",
    answer: ["Hi, I am the one who order brochures and banners yesterday", "Hi, here is my receipt", "I need to know the progress of my order"],
    load_ques: [1,1,2],
    questionKey: 0,
    feedbackString: ["None", "None", "None"],
    medal:["None", "None", "None"],
    feedbackEachAnswer: ["Good answer, by re-introduce yourself they will understand what your intention","It's better to answer their greeting and try to add context regarding toyour intention", "Try giving an answer accompanied by a greeting response, it is more polite and can improve relations."],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "pasrah",
    text: "ok, Is there a problem?",
    answer: ["I need to speed it up", "May I know the progress?", "Yes, I need the order to be completed within three days"],
    load_ques: [3,2,7],
    questionKey: 1,
    feedbackString: ["None", "None", "None"],
    medal:["None", "None", "None"],
    feedbackEachAnswer: ["Please consider your answer, because you may make rude impression for some people", "It’s good to ask first, so you will know the progress before stating your intention", "Good Answer, you answered the problem politely and people will understand your purposes."],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "attention",
    text: "We’ve done 3 ream of brochures and the rest are still on progress",
    answer: ["Generally, how long does it take to complete?", "Can you finish it in three days?", "I need to speed it up"],
    load_ques: [5,4,3],
    questionKey: 2,
    feedbackString: ["None", "None", "None"],
    medal:["None", "None", "None"],
    feedbackEachAnswer: ["By asking for opponent expectation first can be useful to consider your offer", "Try to provide the reason behind your argument, so your opponent understand the situation", "Try to provide the reason behind your argument, so your opponent understand the situation"],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "explain",
    text: "How fast do you want?",
    answer: ["three days", "Generally, how long does it take to complete?", "As fast as possible"],
    load_ques: [4,5,5],
    questionKey: 3,
    feedbackString: ["None", "None", "None"],
    medal:["None", "None", "None"],
    feedbackEachAnswer: ["You maintain the objectives, make sure to play with your intonation when answering so you don't sound rude", "By asking for opponent expectation first can be useful to consider your offer", "Try to offer something more clear and measurable"],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "pasrah",
    text: "I’m sorry I don’t think we can, we have another order to proceed",
    answer: ["Well, I guess I have to cancel the order", "Is there anything that you can do to speed it up?", "I will give you extra fee to finish it"],
    load_ques: [6,7,10],
    questionKey: 4,
    feedbackString: ["None", "None", "None"],
    medal: ["None", "None", "None"],
    feedbackEachAnswer: ["It is good for a negotiation bait, so you could achieve the objective, but don’t over bait and end up failed to achieve all of the objectives", "Nice answer, good to ask another possibility that could be done", "It is something good and a win-win solution when you have a request and offer some benefits to the other party."],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "explain",
    text: "The normal production time required is 7 days.",
    answer: ["Too long, I only have 3 days", "The item will be used at the end of this week. Can it be finished in three days?", "My boss will be angry if it takes too long, how about three days?"],
    load_ques: [4,4,4],
    questionKey: 5,
    feedbackString: ["None", "None", "None"],
    medal:["None", "None", "None"],
    feedbackEachAnswer: ["This answer is suitable when the opponent is using the competitive style.", "Good answer, you ask the possibility of reducing the production time, and give the reason why you ask that.", "Good answer, you ask the possibility of reducing the production time, and give the reason why you ask that."],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "refuse",
    text: "We can’t do that sir, it’s already in progress",
    answer: ["Then, done it in three days", "No, I want to cancel it", "Then, is there anything you can do to speed it up?"],
    load_ques: [7,8,7],
    questionKey: 6,
    feedbackString: ["None", "None", "None"],
    medal: ["None", "None", "None"],
    feedbackEachAnswer: ["You make it clear with your answer, this will give you a strong persona but you may slightly ruin the relationship", "Please think twice before you give that statement, because you may destroy the relationship. Give this statement, only when their action is unforgivable", "This answer will give both parties a room for further negotiation, be careful because there will be many alternative outcome"],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "attention",
    text: "It’s a bit difficult to fulfill, what if there is an additional fee?",
    answer: ["I am ok with that, how much?", "No, I do not want that", "I will give you $10 charge"],
    load_ques: [10,8,10],
    questionKey: 7,
    feedbackString: ["None", "None", "None"],
    medal: ["None", "None", "None"],
    feedbackEachAnswer: ["This answer gives both parties room for further negotiation, which could give a win-win solution result for them", "This statement is not aligned with the initial objectives to maintain the relationship. You could get what you want, but the relationship with the other party could be broken too", "This is a good answer, you realize that you must give some additional fee for your request, and give your initial offering that could make the other party know your additional fee expectation."] ,
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "attention",
    text: "If you want to cancel, at least pay the finished products",
    answer: ["ok, here is your money", "No, whatever", "Alright, how much the additional fee is?"],
    load_ques: [101,9,10],
    questionKey: 8,
    feedbackString: ["You used the 'Avoiding' style, it is better to use 'Collaborating' style in this case!", "None", "None"],
    medal: ["no_medal", "None", "None"],
    feedbackEachAnswer: ["You are responsible for what you’ve ordered by paying the production cost but this will lead to the unfinished production process which will cause another problem that you should solved in three days.", "Using this statement, you force the other party to fulfilled your request, but it will lead to the broken relationship and also could lead to the another problem.", "This statement could open up to the new negotiation process that seems already broken, good job!"],
    styleUsed:["Avoiding", "None", "None"]),

    QuizModel(img: "refuse",
    text: "Sir, if you leave without paying, I’ll call the cops!",
    answer: ["ok, sorry, here is your money", "Then complete it in three days", "Go ahead, I do not care"],
    load_ques: [101,7,101],
    questionKey: 9,
    feedbackString: ["You used the 'Avoiding' style, it is better to use 'Collaborating' style in this case!", "None", "You used the 'Avoiding' style, it is better to use 'Collaborating' style in this case!"],
    medal: ["no_medal", "None", "no_medal"],
    feedbackEachAnswer: ["You need to pay attention more on the initial objectives, because when you choose this statement, there’s no other way round except failed to achieve all the objectives", "You open up a new negotiation but with state where the other party must accept your request, not a very good option to maintain the relationship, but quite good to achieve the other objectives.", "You need to pay attention more on the initial objectives, because when you choose this statement, there’s no other way round except failed to achieve all the objectives"],
    styleUsed:["Avoiding", "None", "Avoiding"]),

    QuizModel(img: "attention",
    text: "I think we can take $15 for the surcharge and we will finish it on time",
    answer: ["I am ok with that", "Lower it, $10 maximum", "We can only give you an extra $10, how about that?"],
    load_ques: [102,11,11],
    questionKey: 10,
    feedbackString: ["You used the 'Compromising' style, it is better to use 'Collaborating' style in this case!.", "None", "None"],
    medal: ["half_medal", "None", "None"],
    feedbackEachAnswer: ["You must take a look again into the initial objectives. The upper limit for the additional fee is $10, when you agree to $15 dollars, it means one of your objectives is failed.", "You already state that your upper limit for the additional fee is $10, but you do it in a 'rude' way, you could end up achieving your request, but also could break the relationship", "You already state that your upper limit for the additional fee is $10, you also ask the other party opinion about your upper limit, which is the best way to maintain the relationship."],
    styleUsed:["Compromising", "None", "None"]),

    QuizModel(img: "pasrah",
    text: "That’s too low, how about $12?",
    answer: ["I am ok with that", "Then, I think I have to cancel it", "If you agree with $10, I will recommend you to our company as a partner"],
    load_ques: [12, 14, 13],
    questionKey: 11,
    feedbackString: ["None", "None", "None"],
    medal: ["None", "None", "None"],
    feedbackEachAnswer: ["You must take a look again into the initial objectives. The upper limit for the additional fee is $10, when you agree to $12 dollars, it means one of your objectives is failed.", "When you said you have to cancel the order, it makes all the negotiation collapse and useless, also it means that you failed to achieve all of your objective.", "It’s a win-win offer for both parties, you get the upper limit of the additional fee, and the manufacturer got some additional benefits."],
    styleUsed:["None", "None", "None"]),

    QuizModel(img: "oke",
    text: "Alright sir, please come back here again in 3 days",
    answer: ["Yes, thank you", "I will see you in three days", "Yes, it is a pleasure to work with you"],
    load_ques: [102,102,102],
    questionKey: 12,
    feedbackString: ["You used the 'Compromising' style, it is better to use 'Collaborating' style in this case!", "You used the 'Compromising' style, it is better to use 'Collaborating' style in this case!", "You used the 'Compromising' style, it is better to use 'Collaborating' style in this case!"],
    medal: ["half_medal", "half_medal", "half_medal"],
    feedbackEachAnswer: ["Good job! You already have a deal with the manufacturer, but the upper limit of the additional fee is not achieved. In the next try, you should try to consider the additional fee objectives! and all the objectives are fulfilled", "Good job! You already have a deal with the manufacturer, but the upper limit of the additional fee is not achieved. In the next try, you should try to consider the additional fee objectives! and all the objectives are fullfiled", "Good job! You already have a deal with the manufacturer, but the upper limit of the additional fee is not achieved. In the next try, you should try to consider the additional fee objectives! and all the objectives are fulfilled"],
    styleUsed:["Compromising", "Compromising", "Compromising"]),

    QuizModel(img: "oke",
    text: "What a good deal, I take that",
    answer: ["Alright, I will come back here in three days", "Thank you, it is a pleasure to work with you", "Deal, thank you for your cooperation"],
    load_ques: [100,100,100],
    questionKey: 13,
    feedbackString: ["You managed to use the 'Collaborating' style which is the best style in this case.", "You managed to use the 'Collaborating' style which is the best style in this case.", "You managed to use the 'Collaborating' style which is the best style in this case."],
    medal: ["full_medal", "full_medal", "full_medal"],
    feedbackEachAnswer: ["Good job! You already have a deal with the manufacturer, moreover all the objectives are fulfilled, congratulations!", "Good job! You already have a deal with the manufacturer, moreover all the objectives are fulfilled, congratulations!", "Good job! You already have a deal with the manufacturer, moreover all the objectives are fulfilled, congratulations!"],
    styleUsed: ["Collaborating", "Collaborating", "Collaborating"]),

    QuizModel(img: "refuse",
    text: "You can’t do that, please rethink it back",
    answer: ["Just give me the finished one, and cancel the rest", "I will not take my words, cancel it", "Just finish it as soon as possible"],
    load_ques: [101, 9, 101],
    questionKey: 14,
    feedbackString: ["You used the 'Avoiding' style, it is better to use 'Collaborating' style in this case!", "None", "You used the 'Avoiding' style, it is better to use 'Collaborating' style in this case!"],
    medal: ["no_medal", "no_medal", "no_medal"],
    feedbackEachAnswer: ["By doing this, the relationship between you and the manufacturer are completely broken, you should consider their offer to rethink and ask for your request first.", "By doing this, the relationship between you and the manufacturer are completely broken, you should consider their offer to rethink and ask for your request first.", "By doing this, the relationship between you and the manufacturer are completely broken, you should consider their offer to rethink and ask for your request first."],
    styleUsed: ["Avoiding", "None", "Avoiding"])



]
