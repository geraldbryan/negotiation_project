//
//  backgroundview.swift
//  voiceRecognition
//
//  Created by Gerald Bryan on 13/10/22.
//

import SwiftUI

struct replayBackgroundview: View {
    
    @State var question: Int
    
    @Environment(\.managedObjectContext) private var viewContext

    @StateObject var item: Item

    var body: some View {
        NavigationView{
            ZStack{
                Color("green_tone").ignoresSafeArea()
                VStack(spacing:30){
                    ZStack (alignment: .leading){
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(Color("yellow_tone"))
                            .shadow(radius: 2)
                            .frame(width: 350, height: 650)
                        Image("peniti")
                            .offset(x: 30, y: -312)
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(.gray)
                            .frame(width: 80, height: 5)
                            .offset(x: 220, y: 300)
                        VStack(alignment: .leading, spacing:14){
                            HStack(spacing:20){
                                Image("\(storyDetail[0].img!)")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:84, height: 79)
                                    .padding(.top,80)
                                    .offset(x: 10)
                                Text("\(storyDetail[0].title!)")
                                    .foregroundColor(Color("green_tone"))
                                    .font(.system(size: 32))
                                    .fontWeight(.bold).padding(.top,80).foregroundColor(.black)
                                    .offset(x: 10)
                            }.frame(width:300, height: 160, alignment: .center)
                            
                            Text("\(storyDetail[0].text!)").frame(width:300).font(.system(size: 16)).padding(.leading,14).foregroundColor(.black)
                                .offset(x: 10)
                            
                            Text("Details :").font(.system(size: 20))
                                .fontWeight(.bold).padding(.leading, 14).foregroundColor(.black)
                                .offset(x: 10)
                            Text("\(storyDetail[0].details!)").frame(width:300).lineSpacing(-10).padding(.top,-10).font(.system(size: 16)).foregroundColor(.black)
                                .offset(x: 10)
                            Text("Objectives :").font(.system(size: 20))
                                .fontWeight(.bold).padding(.leading, 14).foregroundColor(.black)
                                .offset(x: 10)
                            Text("\(storyDetail[0].objectives!)").frame(width:300).padding(.leading,-18).padding(.top,-10).font(.system(size: 16)).foregroundColor(.black)
                                .offset(x: 10)
                        }
                        .offset(y: -50)
                        
                        
                    }
                    NavigationLink(destination: NegotiationView(item: item, i: self.question).environmentObject(SwiftUISpeech())){
                        ZStack{
                            Rectangle().frame(width:209, height: 70).cornerRadius(10).foregroundColor(Color("yellowDark_tone"))
                            Text("Continue").foregroundColor(.black).font(.system(size: 24)).bold()
                        }.padding(.top,-10)
                    }
                }
                
            }
        }.navigationBarHidden(true).ignoresSafeArea()
    }
}

//struct replayBackgroundview_Previews: PreviewProvider {
//    static var previews: some View {
//        replayBackgroundview()
//    }
//}
