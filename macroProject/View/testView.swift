//
//  testView.swift
//  macroProject
//
//  Created by Gerald Bryan on 08/11/22.
//

import SwiftUI

struct testView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    var body: some View {
        
//        ZStack{
//            Color.blue
//            VStack{
//                GifImage(name: "medalfullbg").frame(height: 400).offset()
//            }
//        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        List {
            ForEach(items) { item in
                NavigationLink(destination: testDataView(play: item)){
                    VStack{
                        Text(item.objectives ?? "abca")
                        Text(item.story ?? "")
                }
                }

            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
