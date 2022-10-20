//
//  backgroundview.swift
//  voiceRecognition
//
//  Created by Gerald Bryan on 13/10/22.
//

import SwiftUI

struct backgroundview: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("green_tone").ignoresSafeArea()
                VStack(spacing:30){
                    ZStack (alignment: .leading){
                        Image("storyBackground").scaledToFill().frame(width: 300, height: 620).padding(.trailing,8)
                        VStack(alignment: .leading, spacing:14){
                            HStack(spacing:20){
                                Image("\(storyDetail[0].img!)")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:84, height: 79)
                                    .padding(.top,80)
                                Text("\(storyDetail[0].title!)")
                                    .foregroundColor(Color("green_tone"))
                                    .font(.system(size: 32))
                                    .fontWeight(.bold).padding(.top,80)
                            }.frame(width:300, height: 160, alignment: .center)
                            
                            Text("\(storyDetail[0].text!)").frame(width:300).font(.system(size: 16)).padding(.leading,14)
                            
                            Text("Details :").font(.system(size: 20))
                                .fontWeight(.bold).padding(.leading, 14)
                            Text("\(storyDetail[0].details!)").frame(width:300).lineSpacing(-10).padding(.top,-10).font(.system(size: 16))
                            
                            Text("Objectives :").font(.system(size: 20))
                                .fontWeight(.bold).padding(.leading, 14)
                            Text("\(storyDetail[0].objectives!)").frame(width:300).padding(.leading,-18).padding(.top,-10).font(.system(size: 16))
                            Spacer()
                        }
                        
                        
                    }
                    NavigationLink(destination: NegotiationView().environmentObject(SwiftUISpeech())){
                        ZStack{
                            Rectangle().frame(width:209, height: 70).cornerRadius(10).foregroundColor(Color("yellowDark_tone"))
                            Text("Understand").foregroundColor(.black).font(.system(size: 24)).bold()
                        }.padding(.top,-10)
                        
                        
                    }
                    
                }
                
            }
        }.navigationBarHidden(true).ignoresSafeArea()
    }
}

struct backgroundview_Previews: PreviewProvider {
    static var previews: some View {
        backgroundview()
    }
}
