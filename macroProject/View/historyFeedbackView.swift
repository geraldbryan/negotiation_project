//
//  feedbackView.swift
//  voiceRecognition
//
//  Created by Gerald Bryan on 08/10/22.
//

import SwiftUI

struct histotyFeedbackView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
       
    @StateObject var play: Item
    
    @State var showAlert: Bool = false
    
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
                
                Text("History")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                    .frame(alignment: .topLeading)
                }
            }
        }
    
    var body: some View {
        ZStack{
            Color("green_tone").ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("yellow_tone"))
                    .shadow(radius: 2)
                    .frame(height: 750)
                    .frame(maxWidth: .infinity)
                    .offset(y: 200)
                
                VStack{
                    ZStack{
                        GifImage(name: "\(play.objectives ?? "no_medal")")
                            .scaledToFill()
                    }.frame(maxWidth: .infinity)
                        .frame(height: 390, alignment: .center)
                        .offset(y: -20)
                    
                    if play.objectives == "full_medal"{
                        ZStack{
                            Rectangle()
                                            .fill(Color("green_tone"))
                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                            Text("\(play.feedback ?? "good job!")")
                                .font(.system(size: 14)).foregroundColor(.white).frame(width: 345, height: 78).padding(.horizontal,20)
                        }
                        
                    } else if play.objectives == "no_medal" {
                        ZStack{
                            Rectangle()
                                            .fill(Color("red_tone"))
                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                            Text("\(play.feedback ?? "Too bad you were unable to finish the case. Let???s start negotiation again to accelerate your negotiation and get feedbacks from us!")")
                                .font(.system(size: 14)).foregroundColor(.white).frame(width: 345, height: 78).padding(.horizontal,20)
                        }
                    } else if play.objectives == "half_medal"{
                        ZStack{
                            Rectangle()
                                            .fill(Color("yellowDark_tone"))
                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
                            Text("\(play.feedback ?? "good job!")")
                                .font(.system(size: 14)).foregroundColor(.black).frame(width: 345, height: 78).padding(.horizontal,20)
                        }
                    }
//                    else {
//                        ZStack{
//                            Rectangle()
//                                            .fill(Color("red_tone"))
//                                            .frame(width: 365, height: 78).cornerRadius(10).padding(12)
//                            Text("Too bad you were unable to finish the case. Let???s start negotiation again to accelerate your negotiation and get feedbacks from us!")
//                                .font(.system(size: 14)).foregroundColor(.white).frame(width: 345, height: 78).padding(.horizontal,20)
//                        }
//                    }
            
                    NavigationLink(destination: MatrixFeedback(play : play)){
                        Image("matrix")
                            .frame(width: 346, height: 67).padding(12)
                    }
                        
                    Button(action: {self.showAlert.toggle()}) {
                        Image("confidence")
                            .frame(width: 346, height: 67).padding(.horizontal,12)
                    }.alert("We are sorry", isPresented: $showAlert) {
                        Button("Okay", role: .cancel) { }
                    } message: {
                        Text("We are very sorry this Confident Feedback page hasn't been finished develop yet. Don't worry you still can practice the negotiation.")
                    }
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
