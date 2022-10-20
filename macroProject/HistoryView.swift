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
                .background(Color("backButtonColor"))
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
                Color("backgroundColor").ignoresSafeArea()
                VStack(spacing: 20){
                        
                    Image("emptyHistory")
                        
//                    Spacer(minLength: 80)

                }.frame(height: 750)
                    .offset(y: -50)
            }.ignoresSafeArea()
            .navigationBarTitleDisplayMode(.inline)

            //ini headernya
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
//            .shadow(color: .black, radius: 1)
            
        }
    }
}

struct HistoryView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}

