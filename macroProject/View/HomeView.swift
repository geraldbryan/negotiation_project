//
//  HomeView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 27/09/22.
//

import SwiftUI
import AlertX

struct RoundedCornersCustom: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct HomeView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color("yellow_tone").ignoresSafeArea()
                
                VStack(spacing: 20){
                    
                    ZStack{
                        Image("hand")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Image("bulb")
                            .offset(x: 150, y: -70)
                        Image("coin")
                            .offset(x: -120, y: 70)
                        Image("panah")
                            .offset(x:-150, y: -70)
                        Image("graph")
                            .offset(x: 120, y: 70)
                    }.background(
                        RoundedCornersCustom(corners: [.bottomRight], radius: 100)
                            .fill(Color("kotak"))
                            .frame(width: 430,height: 350)
                            .shadow(radius: 15)
                    )
                    .frame(height: 330)
                    
                    HStack(alignment: .bottom){
                        Text("Menu")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .kerning(0.3)
                            .frame(maxWidth: 360, maxHeight: 50, alignment: .bottomLeading)
                            .foregroundColor(.black)
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
                        
                        Button(action: {self.showAlert.toggle()}) {
                            Image("Tutorial_button")
                                .foregroundColor(.black)
                                .frame(width: 115, height: 150)
                        }
                        .cornerRadius(10)
                        .alert("We are sorry", isPresented: $showAlert) {
                            Button("Okay", role: .cancel) { }
                        } message: {
                            Text("We are very sorry this tutorial page hasn't been finished develop yet. Don't worry you still can practice the negotiation.")
                        }
                        
                    }
                    .frame(maxWidth: 300, maxHeight: 200)
                    
                    HStack(alignment: .bottom){
                        Text("Ready to negotiate?")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .kerning(0.3)
                            .frame(maxWidth: 360, maxHeight: 50, alignment: .bottomLeading)
                            .foregroundColor(.black)
                    }
                    
                    //ini tombolnya be buat start button
                    //nihh be
                    HStack(alignment: .bottom){
                        NavigationLink(destination: backgroundview(), label: {
                            Image( "Ready_button")
                                .foregroundColor(.black)
                                .frame(width: 363, height: 120)
                        })
                        .background(Color("green_tone"))
                        .cornerRadius(30)
                    }
                    Spacer(minLength: 80)

                    
                }
            }.ignoresSafeArea()
        }.navigationBarHidden(true).ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
