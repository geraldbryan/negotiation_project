//
//  testDataView.swift
//  macroProject
//
//  Created by Gerald Bryan on 08/11/22.
//

import SwiftUI

struct testDataView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
       
    @StateObject var play: Item
    
    
    var body: some View {
        VStack{
            Text("Hello, World!")
            List{
                ForEach(Array(play.negotiations! as! Set<Negotiation>).sorted{
                    $0.timestamp ?? Date() > $1.timestamp ?? Date()
                }, id: \.self){ answer in
                    VStack{
                        Text(answer.question ?? "")
                        Text("-")
                        Text(answer.answer ?? "")
                        Text("-")
                        Text(answer.feedback ?? "")
                        Text("-")
                        Text(answer.timestamp ?? Date(), formatter: itemFormatter)
                    }
                }
            }
        }
    }
    
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy '-' HH:mm:ss 'WIB'"
        return formatter
    }()
}
