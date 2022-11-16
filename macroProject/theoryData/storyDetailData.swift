import Foundation

//structure of single quiz
struct StoryDetail  {
    var img : String?
    var title : String?
    var text : String?
    var details : String?
    var objectives : String?
    var style : String?
    var description : String?
}


//final quiz is an array of quizmodel
var storyDetail : [StoryDetail] = [

    StoryDetail(img: "production_hustle",
                title: "Production Hustle",
                text: "You are a Merchandise Staff at Gilda Company and need to prepare some marketing equipment. Yesterday, you came to a printing store and stated your order, but due to limited time, you need to speed-up the production time. Try to negotiate with the printing store.",
                details: "Your order: \n- 20 Ream Brochure \n- 10pcs Roll Banners \n\nYou negotiate with the Operational Manager of the printing store.",
                objectives: "- Achieve 3 day of production \n- Maximum of $10 extra charge \n- Maintain relationship.",
                style: "Comprimising",
                description: "The printing company stated that they willing to speed up the order with extra charge of they wanted. up the order with extra charge of they wanted."
                
    )
]
