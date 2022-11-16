//
//  feedbackView.swift
//  voiceRecognition
//
//  Created by Gerald Bryan on 08/10/22.
//

import SwiftUI

struct feedbackView: View {
    
    @State var isRootView: Bool = false
    
    @State var feedback: String
    
    @State var medal: String
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        
        var btnBack : some View { Button(action: {
            self.isRootView.toggle()
        }){
            HStack{
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 28, height: 28)
                    .background(Color("green_tone"))
                    .clipShape(Circle())
                    .frame(alignment: .topLeading)
                
                Text("Feedback")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                    .frame(alignment: .topLeading)
                }
            }
        }
    
    var body: some View {
        ZStack{
            NavigationLink(destination: HomeView(), isActive: $isRootView){
                EmptyView()
            }
            
            Color("green_tone").ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("yellow_tone"))
                    .shadow(radius: 2)
                    .frame(height: 750)
                    .frame(maxWidth: .infinity)
                    .offset(y: 200)
                
                VStack{
    //                Image("\(medal)")
                    ZStack{
                        GifImage(name: "\(medal)")
                            .scaledToFill()
                    }.frame(maxWidth: .infinity)
                        .frame(height: 390, alignment: .center)
                        .offset(y: -20)
                    
                    if medal == "full_medal"{
                        ZStack{
                            Rectangle()
                                            .fill(Color("green_tone"))
                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                            Text("\(feedback)")
                                .font(.system(size: 14)).foregroundColor(.white).frame(width: 345, height: 78).padding(.horizontal,20)
                        }
                        
                    } else if medal == "no_medal" {
                        ZStack{
                            Rectangle()
                                            .fill(Color("red_tone"))
                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                            Text("\(feedback)")
                                .font(.system(size: 14)).foregroundColor(.white).frame(width: 345, height: 78).padding(.horizontal,20)
                        }
                    } else if medal == "half_medal"{
                        ZStack{
                            Rectangle()
                                            .fill(Color("yellowDark_tone"))
                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                            Text("\(feedback)")
                                .font(.system(size: 14)).foregroundColor(.black).frame(width: 345, height: 78).padding(.horizontal,20)
                        }
                    }
            
                    Image("matrix")
                        .frame(width: 346, height: 67).padding(12)
                        
                    Image("confidence")
                        .frame(width: 346, height: 67).padding(.horizontal,12)
                }
            }
        }.navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(
            Color("green_tone"),
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .preferredColorScheme(.light)
    }
}

//struct feedbackView_Previews: PreviewProvider {
//    static var previews: some View {
//        feedbackView()
//    }
//}
