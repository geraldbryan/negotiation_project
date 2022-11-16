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
                        HStack{
                            Text(item.objectives ?? "abca")
                            Text("-")
                            Text(item.feedback ?? "no feedback")
                        }
                        
                        Divider()
                        Text(item.story ?? "")
                        Divider()
                        Text(item.timestamp!, formatter: itemFormatter)
                        Divider()
                        Text(item.styleDescription ?? "")
                        Divider()
                        HStack{
                            Text("BEST STYLE: \(item.bestStyle ?? "not yet")")
                            Text("USED STYLE: \(item.style ?? "not yet")")
                        }.padding(10)
                        Divider()
                }
                }

            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy '-' HH:mm 'WIB'"
    return formatter
}()

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
