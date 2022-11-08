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
            Text("asu koe")
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

