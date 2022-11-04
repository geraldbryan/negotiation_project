//
//  MatrixFeedback.swift
//  macroProject
//
//  Created by Jason Lauwrin on 24/10/22.
//

import SwiftUI

struct MatrixFeedback: View{
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
            
            Text("  Matrix")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.black)
                .frame(alignment: .topLeading)
            
            }
        .frame(width: 360, height: 100, alignment: .leading)
        }
    }
    
    var body: some View{
        ZStack{
            Color("yellow_tone").ignoresSafeArea()
            ScrollView(){
                VStack{
                    Text("Matrix evaluation can help you in designing \na mindset for decision making and style application. The rating will depend on the \nanswer you choose.")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(Color(.black))
                        .frame(width: 350, height: 80, alignment: .leading)
                    
                    Text("Best Style Implementation")
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 350, height: 50, alignment: .leading)
                        .foregroundColor(Color("green_tone"))
                        .offset(y: 20)
                    
                    HStack{
                        Image(systemName: "peacesign")
                            .font(.system(size: 25, weight: .bold))
                        Text("Compromising")
                            .font(.system(size: 25, weight: .bold))
                    }.frame(width: 350, height: 45, alignment: .leading)
                        .offset(y: 20)
                        .foregroundColor(Color(.black))
                    
                    VStack{
                        Text("The printing company stated that they willing to speed up the order with extra charge of they wanted. up the order with extra charge of they wanted. ")
                            .font(.system(size: 15, weight: .light))
                            .frame(width: 350, height: 80, alignment: .leading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 30)
                    
                    Text("Answer Evaluation")
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 350, height: 80, alignment: .leading)
                        .foregroundColor(Color("green_tone"))
                        .offset(y: 30)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                                .frame(width: 250)
                            VStack{
                                Text("For you order, the normal production time required is 7 days")
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 230, height: 60, alignment: .center)
                                    .foregroundColor(Color(.black))
                            }
                        }.frame(width: 70,height: 100, alignment: .trailing)
                            .offset(x: 40, y: 40)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color("green_tone"))
                                .shadow(radius: 2)
                                .frame(width: 250)
                            VStack{
                                Text("The item will be used at the end of this week. can it be finished in 3 days?")
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 230, height: 60, alignment: .center)
                                    .foregroundColor(.white)
                            }
                        }.frame(width: 70,height: 100, alignment: .leading)
                            .offset(x: -40, y: 50)
                        
                        VStack{
                            Text("By explaining the reason of your offer with polite word and expression, you can maintain the relationship")
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 350, height: 80, alignment: .leading)
                                .foregroundColor(Color(.black))
                        }.offset(y: 60)
                        Divider().frame(width: 350).offset(y: 60)
                    }.frame(height: 260)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                                .frame(width: 250)
                            VStack{
                                Text("It seems difficult to complete in 3 days, the workload will also make it difficult for our employees")
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 230, height: 60, alignment: .center)
                                    .foregroundColor(Color(.black))
                            }
                        }.frame(width: 70,height: 100, alignment: .trailing)
                            .offset(x: 40, y: 70)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color("green_tone"))
                                .shadow(radius: 2)
                                .frame(width: 250)
                            VStack{
                                Text("I understand, is there any suggestion to speed up the production?")
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 230, height: 60, alignment: .center)
                                    .foregroundColor(.white)
                            }
                        }.frame(width: 70,height: 100, alignment: .leading)
                            .offset(x: -40, y: 80)
                        
                        VStack{
                            Text("The answer you choose is correct. Be sure to explain the reason for the offer you are making and use polite word and expression.")
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 350, height: 80, alignment: .leading)
                                .foregroundColor(Color(.black))
                        }.offset(y: 90)
                        Divider().frame(width: 350).offset(y: 90)
                    }.frame(height: 350)
                        .offset(y: 10)
                    
                    VStack{
                        Text("")
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 350, height: 200, alignment: .leading)
                    }
                }.offset(y: 50)
            }
            .scrollIndicators(.hidden)
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

struct MatrixFeedbackView_Previews: PreviewProvider{
    static var previews: some View{
        MatrixFeedback()
    }
}


