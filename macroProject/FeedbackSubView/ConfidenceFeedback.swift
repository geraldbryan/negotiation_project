//
//  ConfidenceFeedback.swift
//  macroProject
//
//  Created by Jason Lauwrin on 25/10/22.
//

import SwiftUI

struct ConfidenceFeedback: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBackMatrixFeedback : some View { Button(action: {
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
            
            Text("  Confidence")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color(.black))
                .frame(alignment: .topLeading)
            
            }
        }
    }
    
    var body: some View{
        ScrollView(){
            ZStack{
                Color("yellow_tone").ignoresSafeArea()
                VStack{
                    Text("Once you have observed and understood the situation, the way you present your argument determines the direction of the negotiation. Make sure you deliver it with clear pronunciation, intonation, and confidence.")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(Color(.black))
                        .frame(width: 350, height: 80, alignment: .leading)
                    
                    Text("Performance Evaluation")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color(.black))
                        .frame(width: 350, height: 60, alignment: .leading)
                        .offset(y: 15)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color("lightGreen_tone"))
                                .shadow(radius: 2)
                                .frame(width: 350)
                            VStack{
                                Text("B. The item will be used at the end of this week. Can it be finished in 3 days?")
                                    .font(.system(size: 15, weight: .semibold))
                                    .frame(width: 330, height: 60, alignment: .center)
                                    .foregroundColor(Color("green_tone"))
                            }
                        }.frame(width: 70,height: 100, alignment: .center)
                        
                        VStack{
                            Text("Your confidence is good. The intonation and pronunciation are clear.")
                                .font(.system(size: 17, weight: .light))
                                .frame(width: 350, height: 80, alignment: .leading)
                                .foregroundColor(Color(.black))
                        }.offset(y: 0)
                        Divider().frame(width: 350)
                    }.frame(height: 260)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color("lightGreen_tone"))
                                .shadow(radius: 2)
                                .frame(width: 350)
                            VStack{
                                Text("A. I Understand, is there any suggestion to speed up the production?")
                                    .font(.system(size: 15, weight: .semibold))
                                    .frame(width: 330, height: 60, alignment: .center)
                                    .foregroundColor(Color("green_tone"))
                            }
                        }.frame(width: 70,height: 100, alignment: .center)
                        
                        VStack{
                            Text("Your confidence is good. The intonation and pronunciation are clear.")
                                .font(.system(size: 17, weight: .light))
                                .frame(width: 350, height: 80, alignment: .leading)
                                .foregroundColor(Color(.black))
                        }.offset(y: 0)
                        Divider().frame(width: 350)
                    }.frame(height: 200)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color("lightGreen_tone"))
                                .shadow(radius: 2)
                                .frame(width: 350)
                            VStack{
                                Text("C. What if I provide additional costs for the work to lighten the workload of your employees?")
                                    .font(.system(size: 15, weight: .semibold))
                                    .frame(width: 330, height: 60, alignment: .center)
                                    .foregroundColor(Color("green_tone"))
                            }
                        }.frame(width: 70,height: 100, alignment: .center)
                        
                        VStack{
                            Text("Your confidence is good. The intonation and pronunciation are clear.")
                                .font(.system(size: 17, weight: .light))
                                .frame(width: 350, height: 80, alignment: .leading)
                                .foregroundColor(Color(.black))
                        }
                        Divider().frame(width: 350)
                    }.frame(height: 200)
                        .offset(y: 30)
                    
                    
                    VStack{
                        Text("")
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 350, height: 200, alignment: .leading)
                            
                    }
                }.offset(y: 50)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBackMatrixFeedback)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(
                Color.white,
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .preferredColorScheme(.light)
        }
    }
}

struct ConfidenceFeedbackView_Previews: PreviewProvider{
    static var previews: some View{
        ConfidenceFeedback()
    }
}



