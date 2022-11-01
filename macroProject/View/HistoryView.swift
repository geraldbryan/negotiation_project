//
//  TheoryView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 30/09/22.
//

import SwiftUI

struct HistoryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }){
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
    
    var body: some View {
        
        ScrollView(){
            
            ZStack{
                Color("yellow_tone").ignoresSafeArea()
                VStack(spacing: 20){
                        
                    Image("emptyHistory")

                }.frame(height: 750)
                    .offset(y: -50)
            }.ignoresSafeArea()
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
        }
    }
}

struct HistoryView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}

