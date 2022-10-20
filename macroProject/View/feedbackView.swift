//
//  feedbackView.swift
//  voiceRecognition
//
//  Created by Gerald Bryan on 08/10/22.
//

import SwiftUI

struct feedbackView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        
        var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
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
    
    @EnvironmentObject var swiftUISpeech:SwiftUISpeech
    var body: some View {
        ZStack{
            Color("green_tone").ignoresSafeArea()
            VStack{
                Image("feedback_shape").frame(width:390, height:631).ignoresSafeArea().padding(.top, 213)
            }
            VStack{
                Image("\(self.swiftUISpeech.medal)")
                    .frame(width: 389, height: 389,alignment: .center).padding(.top,-50)
                    .padding(.bottom,40)
                ZStack{
                    Rectangle()
                                    .fill(Color("green_tone"))
                                    .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                    Text("\(self.swiftUISpeech.text)")
                        .font(.system(size: 14)).foregroundColor(.white).padding(.horizontal,12)
                }
                Image("matrix")
                    .frame(width: 346, height: 67).padding(12)
                    
                Image("confidence")
                    .frame(width: 346, height: 67).padding(.horizontal,12)
            }
        }.navigationBarItems(leading: btnBack)
            .navigationBarBackButtonHidden(true)
            
    }
}

struct feedbackView_Previews: PreviewProvider {
    static var previews: some View {
        feedbackView()
    }
}
