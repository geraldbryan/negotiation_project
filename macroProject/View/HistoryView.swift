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
    
    var body: some View{
        VStack{
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 390, height: 150)
                    .foregroundColor(Color.white)
                    .shadow(radius: 3)
                HStack{
                    Image("CompromisingMatrix").resizable().frame(width: 120, height: 120)
                    VStack{
                        VStack{
                            Text("Ini judul").font(.system(size: 25, weight: .bold)).foregroundColor(Color("green_tone"))
                                .frame(width: 230, alignment: .topLeading)
                            Text("ini style used").font(.system(size: 15, weight: .semibold)).frame(width: 230, alignment: .topLeading)
                        }.frame(width: 240, height: 85, alignment: .topLeading).offset(y: -8)
                        Text("Date: 11/06/2021").font(.system(size: 15, weight: .regular))
                            .frame(width: 240, alignment: .leadingLastTextBaseline).offset(y: -10).foregroundColor(Color.gray)
                    }
                }
            }.frame(maxWidth: .infinity).offset(y:20)
            
//            List(knowledges, id: \.id){ knowledgeItem in
//                NavigationLink(destination: TheoryKnowledgeView(knowledge: knowledgeItem)){
//                    Image(knowledgeItem.image)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 350, height: 65)
//                        .offset(x: 10)
//                }
//
//                .navigationBarBackButtonHidden(true)
//                    .background(Color("yellow_tone"))
//                    .listRowSeparator(.hidden)
//                    .listRowBackground(Color("yellow_tone"))
//            }
//            .padding(.top)
//            .scrollContentBackground(.hidden)
//            .scrollDisabled(true)
//            .offset(x: 0, y: -5)
        }
    }
}

struct HalfHistoryView: View{
    
    var body: some View{
        VStack{
            Text("anj")
        }
    }
}

struct NotAchievedHistoryView: View{
    
    var body: some View{
        VStack{
            Text("kampret")
        }
    }
}

struct HistoryView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}

