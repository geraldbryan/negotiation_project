//
//  TheoryView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 30/09/22.
//

import SwiftUI

enum historyChoices: String, CaseIterable{
    case achieved = "Achieved"
    case half = "Half"
    case notAchieved = "Not Achieved"
}

struct HistoryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedSide: historyChoices = .notAchieved
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }){
        
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .font(.system(size: 10, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 25, height: 25)
                    .background(Color("green_tone"))
                    .clipShape(Circle())
                    .frame(alignment: .topLeading)
                
                Text("  History")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color.black)
                    .frame(alignment: .topLeading)
                
            }
        }
        }
    }
    
    var body: some View {
        
        ZStack{
            Color("yellow_tone").ignoresSafeArea()
            VStack{
                Picker("choose", selection: $selectedSide){
                    ForEach(historyChoices.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Spacer()
                ScrollView(){

                    VStack(spacing: 0){
                            
                        ChoosenHistoryView(selectedSide: selectedSide)
                        Image("history_empty")
                            .offset(y: 50)

                    }
                }.frame(maxHeight: .infinity)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
        //ini headernya
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        
        //make navbar color to white
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(
            Color.white,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .preferredColorScheme(.light)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ChoosenHistoryView: View{
    var selectedSide: historyChoices
    
    var body: some View{
        switch selectedSide{
            case .achieved:
                AchievedHistoryView()
            
            case .half:
                HalfHistoryView()
            
            case .notAchieved:
                NotAchievedHistoryView()
        }
    }
}

struct AchievedHistoryView: View{
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    var body: some View{
        VStack{
            ForEach(items) { item in
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 360, height: 150)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    HStack{
                        Image("history_image").resizable().frame(width: 90, height: 90)
                        VStack{
                            VStack{
                                Text(item.story ?? "").font(.system(size: 25, weight: .bold)).foregroundColor(Color("green_tone"))
                                    .frame(width: 200, alignment: .topLeading)
                                Text("Style Used: \(item.style ?? "not yet")").font(.system(size: 15, weight: .semibold)).frame(width: 200, alignment: .topLeading)
                            }.frame(width: 210, height: 85, alignment: .topLeading).offset(y: -8)
                            Text(item.timestamp!, formatter: itemFormatter).font(.system(size: 15, weight: .regular))
                                .frame(width: 210, alignment: .leadingLastTextBaseline).offset(y: -10).foregroundColor(Color.gray)
                        }.offset(x: 10)
                    }
                }.frame(maxWidth: .infinity).offset(y:20)
            }
        }
    }
    
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy '-' HH:mm:ss 'WIB'"
        return formatter
    }()
}

struct HalfHistoryView: View{
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    var body: some View{
        VStack{
            Text("anj")
        }
    }
    
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy '-' HH:mm:ss 'WIB'"
        return formatter
    }()
}

struct NotAchievedHistoryView: View{
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    var body: some View{
        VStack{
            Text("kampret")
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy '-' HH:mm 'WIB'"
    return formatter
}()

struct HistoryView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}

