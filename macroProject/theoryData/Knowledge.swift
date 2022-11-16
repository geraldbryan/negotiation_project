//
//  Knowledge.swift
//  macroProject
//
//  Created by Jason Lauwrin on 18/10/22.
//

import SwiftUI

struct Knowledge: Identifiable{
    let id = UUID()
    let icon: String
    let textIcon: String
    let image: String
    let title: String
    let brief: String
    let infoTitle1: String
    let info1: String
    let infoTitle2: String
    let info2: String
    let infoTitle3: String
    let info3: String
    let infoTitle4: String
    let info4: String
    let infoTitle5: String
    let info5: String
    let color: String
//    let url: URL
}

struct KnowledgeList{
    
    static let knowledgeData = [
        
        Knowledge(
            icon: "checkmark",
            textIcon: "Do's",
            image: "DoButton",
            title: "Do's In Negotiation",
            brief: "To get the best result in negotiation, there are do's that you have to know.",
            infoTitle1: "1. DO prepare",
            info1: "Preparation is key. Research about the person, the organization they're representing, your expectation, and what is the deals they're aiming.",
            infoTitle2: "2. DO know your bottom line",
            info2: "Determine your desired outcome and also set a bottom line (to know when to step back from negotiations and when to move forward)",
            infoTitle3: "3. Do use a friendly approach.",
            info3: "Take time to smile and exchange pleasantries. It can lead to smoother negotiations and a better outcome for everyone involved.",
            infoTitle4: "4. DO listen to others.",
            info4: "The most effective negotiators follow the 80/20 rule: 80% listen, 20% talk.",
            infoTitle5: "5. DO consider all of your options.",
            info5: "It's important to keep the mind open to a variety of options. If you go into business negotiations with a closed mind, you may miss an unexpected opportunity.",
            color: "green_tone"),
        Knowledge(
            icon: "xmark",
            textIcon: "Dont's",
            image: "DontButton",
            title: "Dont's In Negotiation",
            brief: "To get the best result in negotiation, there are dont's that you have to know",
            infoTitle1: "1. DON'T get caught up in emotions.",
            info1: "It could interfere your judgement and make a blunders that hinder or halt negotiations altogether. Stay calm and friendly, even if those you're negotiating with aren't.",
            infoTitle2: "2. DON'T understimate your worth.",
            info2: "write down your accomplishments or your organization's strengths before going into negotiations and keep them in mind as you advocate for what you want",
            infoTitle3: "3. DON'T have an all-or-nothing attitude.",
            info3: "One-sided thinking is not likely to end with a succesful deal, so make sure you know which items are essential to your position and which points you can concede.",
            infoTitle4: "4. DON'T gloat after a win",
            info4: "The person you gloated in front of yesterday may be the person you're working with or reporting to tommorow.",
            infoTitle5: "5. DON'T understimate anyone",
            info5: "Don't understimate the power of a determined competitor-including you. Financial Worth and business size may be powerful, but so are preparation, a solid plan, and a great attitude.",
            color: "red_tone"),
    ]
}
