//
//  Matrix.swift
//  macroProject
//
//  Created by Jason Lauwrin on 19/10/22.
//


import SwiftUI

struct Matrix: Identifiable{
    let id = UUID()
    let btnImage: String
    let image: String
    let title: String
    let definition: String
    let imp1: String
    let imp2: String
    let example: String
    let sub1: String
    let subinfo1: String
    let sub2: String
    let subinfo2: String
    let advan1: String
    let advan2: String
    let advan3: String
    let advan4: String
    let dis1: String
    let dis2: String
    let dis3: String
    let dis4: String
    let urlName: String
    let urlText: String
    let url: URL
}

struct MatrixList{
    
    static let matrixData = [
        
        Matrix(btnImage: "Avoiding_button",
               image: "AvoidMatrix",
               title: "Avoiding",
               definition: "Avoiding is suit to be used if neither the relationship nor the substantive outcomes are important. Also known as “lose-lose” solutions.",
               imp1: "Withdrawing from active negotiation or avoiding the negotiation altogether.",
               imp2: "Used it as an emotionally charged situations as a first tactic, if the counterpart calms down, you can steer them into another negotiation style.",
               example: "Ralph wants to buy new printers for his office. He calls the largest printing company in town and his preference is to buy the new printers from a reliable brand.  The salesman is trying to force him to buy the printers from a new brand that they are promoting.",
               sub1: "Salesman:",
               subinfo1: "This new brand is state-of-the-art and has more vibrant colors!",
               sub2: "Ralph:",
               subinfo2: "No thanks. I’ve been using my current brand for years now and it works fine for me. Thanks for the information though.",
               advan1: "Gather more information during the cooldown period.",
               advan2: "Displaying confidence and calm by avoiding the negotiation to collect your thoughts.",
               advan3: "Use when you would get hurt by staying or when you want to change the ground rules.",
               advan4: "It is useful when issues are trivial and is helpful when the other side has much greater power.",
               dis1: "Nothing getting done if too many problems are swept under the rug.",
               dis2: "At least one of the parties displays a subtle reluctance or unwillingness to resolve the issues.",
               dis3: "Little use for those working with organisations as it strains relationships and prevents the building of trust between the parties involved.",
               dis4: "Your personal reputation could be damaged.",
               urlName: "Avoiding Negotiation Styles",
               urlText: "https://www.springtideprocurement.com/avoiding-negotiating-types/",
               url: URL(string: "https://www.springtideprocurement.com/avoiding-negotiating-types/")!),
        
        Matrix(btnImage: "Accomodating_button 1",
               image: "AccomodatingMatrix",
               title: "Accommodating",
               definition: "Accommodation objective is for the benefit of the other party. It is used when outcome is not as important as the relationship.",
               imp1: "When you find out that you are in the wrong deal or want to minimize your losses.",
               imp2: "When you are trying to improve relations with the other party.",
               example: "Company A are at fault because unable to fulfill the agreement, repairing the relationship is critical, and Company A have nothing else that would benefit to Company B, use accomodating to maintain the relationships.",
               sub1: "Company B:",
               subinfo1: "we will fix this problem within a week, please give it a chance.",
               sub2: "Barry:",
               subinfo2: "Alright, a week or over.",
               advan1: "You can end up as the better person during and after the negotiation.",
               advan2: "You can control your losses to a minimum by agreeing to a compromise.",
               advan3: "The other party may have a better impression of you by agreeing to their terms.",
               advan4: "The other party may even agree to terms that may benefit you as a show of respect.",
               dis1: "You’ll end up getting frustrated as you’re getting the short end of the straw.",
               dis2: "Your self-esteem is undermined.",
               dis3: "It may generate a lack of confidence among your peers.",
               dis4: "It gives the other party an opportunity to make more demands.",
               urlName: "Accommodating Negotiation Styles",
               urlText: "https://www.springtideprocurement.com/accommodating-negotiating-types/",
               url: URL(string: "https://www.springtideprocurement.com/accommodating-negotiating-types/")!),
        
        Matrix(btnImage: "Compromising_button",
               image: "CompromisingMatrix",
               title: "Compromising",
               definition: "Compromising negotiation is different from the other styles as no one wins or loses. The main concern is finding middle ground and doing what’s fair for both parties.",
               imp1: "When there are issues that are out of control.",
               imp2: "When you are pushed for time and dealing with a party you have dealt with before and trust.",
               example: "Company A is in a rush to make a decision, but the CEO of Company B is not present yet, for the sake of both company, Company B had to compromise the situation.",
               sub1: "Company A:",
               subinfo1: "But, if we dont make this deal soon enough the company will fall apart",
               sub2: "Company B:",
               subinfo2: "Okay, rather than making it a fuss lets meet at the middle",
               advan1: "Reduces the strain of negotiating.",
               advan2: "Most likely to win against an Avoiding negotiator.",
               advan3: "By deciding on a compromise for now, you can retreat and gather more intel about the upcoming negotiation.",
               advan4: "It may restore confidence among your peers by quickly identifying and deciding a middle ground with the other party.",
               dis1: "When you have nothing else you can possibly offer in the negotiation, you may have to settle for less than you hoped for.",
               dis2: "Never compromise on something where the outcome is critical to your party.",
               dis3: "Don’t become known as a compromiser! The other party may wise up to your style which will leave you weak.",
               dis4: "Compromising often happens when you have not prepared enough for the negotiation. Preparation is paramount to a successful negotiation.",
               urlName: "Compromising Negotiation Styles",
               urlText: "https://www.springtideprocurement.com/compromising-negotiating-types/",
               url: URL(string: "https://www.springtideprocurement.com/compromising-negotiating-types/")!),
        
        Matrix(btnImage: "Competing_button",
               image: "CompetingMatrix",
               title: "Competing",
               definition: "Competitive is a style that has an orientation to the result and usually known as a “win-lose” style where there aren’t any requirements to maintain relationship with the counterparts.",
               imp1: "Used when you have more bargaining power or the negotiation subject is non negotiable",
               imp2: "When you need to get the result of the negotiation quickly, and a one time or short term agreement.",
               example: "A retailer need to reduce their order lead times to decrease the inventory they carry. If the supplier reject the offer, the retailer might threaten to reduce the amount of order or to take their business elsewhere.",
               sub1: "Supplier:",
               subinfo1: "We don’t think that we can reduce your order lead time for this product, since it needs a long processing time.",
               sub2: "Retailer:",
               subinfo2: "We certainly need your product faster, you only have two choice, reduce the lead times, or I decrease the amount of my order.",
               advan1: "You could get the outcome of the negotiation very quick",
               advan2: "Your objective have the higher possibility to be met",
               advan3: "You can avoid to spill your important information to the other party during the negotiation.",
               advan4: "You may use an aggressive and intimidating approach to show some power",
               dis1: "Couldn’t be used if you don’t have a bargaining power",
               dis2: "You need to make sure that the relationship with the other party is not important",
               dis3: "Easy win, easy lose",
               dis4: "Personal reputation can be damaged",
               urlName: "Competing Negotiation Styles",
               urlText: "https://www.latestlaws.com/articles/collaborative-v-competitive-negotiation-a-critical-analysis",
               url: URL(string: "https://www.latestlaws.com/articles/collaborative-v-competitive-negotiation-a-critical-analysis")!),
        
        Matrix(btnImage: "Collaborating_button",
               image: "CollaboratingMatrix",
               title: "Collaborating",
               definition: "Collaborative applied when the “relationship” as an important and valuable element of what’s at stake, while seeking an equitable and fair agreement.",
               imp1: "When both parties need their goals met.",
               imp2: "When creative brainstorming is needed to come up with a solution to a difficult problem.",
               example: "Barry trying to find a supplier for widgets. Because switching suppliers can disrupt the production then it’s easier to find someone you can deal for a long term. Then, the relationships should be maintained.",
               sub1: "Supplier:",
               subinfo1: "It cost $25 for the widgets, but I’ll give you a discount if you join our member",
               sub2: "Barry:",
               subinfo2: "Offer accepted, it would be great if we can collaborate for my project. There will be extra bonus i would give to you.",
               
               advan1: "A better feeling, and result, occurs when our needs are met; including the need for fairness.",
               advan2: "Create a win-win situation, so that everyone leaves the table feeling like they’ve gained something of value",
               advan3: "Most likely to win against Competitive or Avoiding negotiators.",
               advan4: "Maintain relationships",
               dis1: "Collaboration takes time, which makes compromising a tempting alternative.",
               dis2: "Leave yourself enough time to collaborate, and don’t be tempted to rush in order to close the negotiations.",
               dis3: "Be careful not to share too much information with the other party, as this can leave you exposed and exploited.",
               dis4: "You can often overcomplicate a situation by exploring too many alternative solution. Keep your focus and keep the overall negotiation goal in mind.",
               urlName: "Collaborating Negotiation Styles",
               urlText: "https://www.springtideprocurement.com/collaborative-negotiating-types/",
               url: URL(string: "https://www.springtideprocurement.com/collaborative-negotiating-types/")!),
    ]
}
