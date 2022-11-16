//
//  TheoryKnowledgeView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 18/10/22.
//

import SwiftUI

struct TheoryKnowledgeView: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var knowledge: Knowledge
    var btnBack2 : some View { Button(action: {
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
            
            Text("  Knowledge")
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
                    Text(knowledge.title)
                        .font(.system(size: 30, weight: .bold))
                        .frame(width: 350, height: 50, alignment: .leading)
                        .foregroundColor(Color.black)
                    
                    Text(knowledge.brief)
                        .foregroundColor(Color(.black))
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 350, height: 40, alignment: .leading)
                    
                    Divider().frame(width: 200, alignment: .leading).offset(x: -80, y: 10)
//                    HStack{
//                        Image(systemName: knowledge.icon)
//                            .font(.system(size: 25, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                        Text(knowledge.textIcon)
//                            .font(.system(size: 25, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                    }.frame(width: 350, height: 45, alignment: .leading)
//                        .offset(y: 30)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 6)
                                .shadow(radius: 2)
                                .frame(width: 360, height: 45)
                                .foregroundColor(Color("\(knowledge.color)"))
                            VStack{
                                Text(knowledge.infoTitle1)
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(width: 340, height: 30, alignment: .leading)
                                    .foregroundColor(Color(.white))
                            }
                        }.frame(width: 370)
//                        Image(systemName:"text.badge.star")
//                            .font(.system(size: 40, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                            .frame(width: 350, height: 50, alignment: .leading)
//                            .offset(x:15)
                        Text(knowledge.info1)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 350, height: 80, alignment: .topLeading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 30)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 6)
                                .shadow(radius: 2)
                                .frame(width: 360, height: 45)
                                .foregroundColor(Color("\(knowledge.color)"))
                            VStack{
                                Text(knowledge.infoTitle2)
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(width: 340, height: 30, alignment: .leading)
                                    .foregroundColor(Color(.white))
                            }
                        }.frame(width: 370)
//                        Image(systemName:"star.leadinghalf.filled")
//                            .font(.system(size: 40, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                            .frame(width: 350, height: 50, alignment: .leading)
//                            .offset(x:15)
                        Text(knowledge.info2)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 350, height: 80, alignment: .topLeading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 50)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 6)
                                .shadow(radius: 2)
                                .frame(width: 360, height: 45)
                                .foregroundColor(Color("\(knowledge.color)"))
                            VStack{
                                Text(knowledge.infoTitle3)
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(width: 340, height: 30, alignment: .leading)
                                    .foregroundColor(Color(.white))
                            }
                        }.frame(width: 370)
//                        Image(systemName:"person.2")
//                            .font(.system(size: 40, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                            .frame(width: 350, height: 50, alignment: .leading)
//                            .offset(x:15)
                        Text(knowledge.info3)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 350, height: 80, alignment: .topLeading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 70)
                    
                    VStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 6)
                                .shadow(radius: 2)
                                .frame(width: 360, height: 45)
                                .foregroundColor(Color("\(knowledge.color)"))
                            VStack{
                                Text(knowledge.infoTitle4)
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(width: 340, height: 30, alignment: .leading)
                                    .foregroundColor(Color(.white))
                            }
                        }.frame(width: 370)
//                        Image(systemName:"ear")
//                            .font(.system(size: 40, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                            .frame(width: 350, height: 50, alignment: .leading)
//                            .offset(x:15)
                        Text(knowledge.info4)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 350, height: 80, alignment: .topLeading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 90)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 6)
                                .shadow(radius: 2)
                                .frame(width: 360, height: 45)
                                .foregroundColor(Color("\(knowledge.color)"))
                            VStack{
                                Text(knowledge.infoTitle5)
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(width: 340, height: 30, alignment: .leading)
                                    .foregroundColor(Color(.white))
                            }
                        }.frame(width: 370)
//                        Image(systemName:"list.bullet")
//                            .font(.system(size: 40, weight: .bold))
//                            .foregroundColor(Color("green_tone"))
//                            .frame(width: 350, height: 50, alignment: .leading)
//                            .offset(x:15)
                        Text(knowledge.info5)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 350, height: 80, alignment: .topLeading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 110)
                    
                    VStack{
                        Text("")
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 350, height: 200, alignment: .leading)
                    }
                }.offset(y: 20)
            }
            .scrollIndicators(.hidden)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack2)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(
            Color.white,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .preferredColorScheme(.light)
        .frame(maxHeight: .infinity)
    }
}

struct TheoryKnowledgeView_Previews: PreviewProvider{
    static var previews: some View{
        TheoryKnowledgeView(knowledge: KnowledgeList.knowledgeData.first!)
    }
}
