//
//  HomeView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 27/09/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
//        edgesIgnoringSafeArea cari nih
        
        NavigationView{
            
            ZStack{
                Color("backgroundColor").ignoresSafeArea()
                
                VStack(spacing: 20){
                    HStack{
                        Image("oi")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 280)
                            .padding()
                    }
                    
                    HStack(alignment: .bottom){
                        Text("Menu")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .kerning(0.3)
                            .frame(maxWidth: 360, maxHeight: 50, alignment: .bottomLeading)
                    }
                    
                    
                    //bagian button menu nih
                    HStack{
                        NavigationLink(destination: HistoryView(), label: {
                            Image("History_button")
                                .foregroundColor(.black)
                                .frame(width: 115, height: 150)
                        })
                        .cornerRadius(10)
                        
                        NavigationLink(destination: TheoryView(), label: {
                            Image("Theory_button")
                                .foregroundColor(.black)
                                .frame(width: 115, height: 150)
                        })
                        .cornerRadius(10)
                        
                        NavigationLink(destination: TutorialView(), label: {
                            Image("Tutorial_button")
                                .foregroundColor(.black)
                                .frame(width: 115, height: 150)
                        })
                        .cornerRadius(10)
                    }
                    .frame(maxWidth: 300, maxHeight: 200)
                    
                    HStack(alignment: .bottom){
                        Text("Ready to negotiate?")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .kerning(0.3)
                            .frame(maxWidth: 360, maxHeight: 50, alignment: .bottomLeading)
                    }
                    
                    //ini tombolnya be buat start button
                    //nihh be
                    HStack(alignment: .bottom){
                        Button(action: {
                            
                        }, label: {
                            Image( "Ready_button")
                                .foregroundColor(.black)
                                .frame(width: 363, height: 120)
                        })
                        .background(Color("GreenColor"))
                        .cornerRadius(30)
                    }
                    Spacer(minLength: 80)

                    
                }
            }.ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
