//
//  MatrixFeedback.swift
//  macroProject
//
//  Created by Jason Lauwrin on 24/10/22.
//

import SwiftUI

struct MatrixFeedback: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Environment(\.managedObjectContext) private var viewContext
    
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Negotiation.timestamp, ascending: true)],
//        animation: .default)
    
    @StateObject var play: Item

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
                        Text("\(play.style ?? "not yet")")
                            .font(.system(size: 25, weight: .bold))
                    }.frame(width: 350, height: 45, alignment: .leading)
                        .offset(y: 20)
                        .foregroundColor(Color(.black))

                    VStack{
                        Text("\(play.styleDescription ?? "Please finish the story first")")
                            .font(.system(size: 15, weight: .light))
                            .frame(width: 350, height: 80, alignment: .leading)
                            .foregroundColor(Color(.black))
                    }.offset(y: 30)
                    
                    Spacer()
                    
                    Text("Answer Evaluation")
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 350, height: 0, alignment: .leading)
                        .foregroundColor(Color("green_tone"))
                        .offset(y: 50)
                    
                    ForEach(Array(play.negotiations! as! Set<Negotiation>).sorted{
                        $0.timestamp ?? Date() < $1.timestamp ?? Date()
                    }, id: \.self){ answer in
                        VStack{
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .foregroundColor(.white)
                                        .shadow(radius: 2)
                                        .frame(width: 250)
                                    VStack{
                                        Text("\(answer.question ?? "")")
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
                                        Text("\(answer.answer ?? "")")
                                            .font(.system(size: 15, weight: .light))
                                            .frame(width: 230, height: 60, alignment: .center)
                                            .foregroundColor(.white)
                                    }
                                }.frame(width: 70,height: 100, alignment: .leading)
                                    .offset(x: -40, y: 50)
                                
                                VStack{
                                    Text("\(answer.feedback ?? "")")
                                        .font(.system(size: 15, weight: .light))
                                        .frame(width: 350, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.black))
                                }.offset(y: 60)
                                Divider().frame(width: 350).offset(y: 60)
                            }.frame(height: 260)
                            
                            VStack{
                                Text("")
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(width: 350, height: 80, alignment: .leading)
                            }
                        }.offset(y: 70)
                    }
        
                    VStack{
                        Text("")
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 350, height: 80, alignment: .leading)
                    }
                }.frame(width: 420)
            }.scrollIndicators(.hidden).frame(maxHeight: .infinity).offset(y: 20)
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

struct MatrixFeedbackPlay: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Environment(\.managedObjectContext) private var viewContext
    
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Negotiation.timestamp, ascending: true)],
//        animation: .default)
    
    @StateObject var play: Item
    
    @State var isRootView: Bool = false

    var btnBackMatrixFeedbackPlay : some View { Button(action: {
        self.isRootView.toggle()
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
        NavigationStack{
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
                            Text("\(play.style ?? "not yet")")
                                .font(.system(size: 25, weight: .bold))
                        }.frame(width: 350, height: 45, alignment: .leading)
                            .offset(y: 20)
                            .foregroundColor(Color(.black))

                        VStack{
                            Text("\(play.styleDescription ?? "Please finish the story first")")
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 350, height: 80, alignment: .leading)
                                .foregroundColor(Color(.black))
                        }.offset(y: 30)
                        
                        Spacer()
                        
                        Text("Answer Evaluation")
                            .font(.system(size: 24, weight: .bold))
                            .frame(width: 350, height: 0, alignment: .leading)
                            .foregroundColor(Color("green_tone"))
                            .offset(y: 50)
                        
                        ForEach(Array(play.negotiations! as! Set<Negotiation>).sorted{
                            $0.timestamp ?? Date() < $1.timestamp ?? Date()
                        }, id: \.self){ answer in
                            VStack{
                                VStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .foregroundColor(.white)
                                            .shadow(radius: 2)
                                            .frame(width: 250)
                                        VStack{
                                            Text("\(answer.question ?? "")")
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
                                            Text("\(answer.answer ?? "")")
                                                .font(.system(size: 15, weight: .light))
                                                .frame(width: 230, height: 60, alignment: .center)
                                                .foregroundColor(.white)
                                        }
                                    }.frame(width: 70,height: 100, alignment: .leading)
                                        .offset(x: -40, y: 50)
                                    
                                    VStack{
                                        Text("\(answer.feedback ?? "")")
                                            .font(.system(size: 15, weight: .light))
                                            .frame(width: 350, height: 80, alignment: .leading)
                                            .foregroundColor(Color(.black))
                                    }.offset(y: 60)
                                    Divider().frame(width: 350).offset(y: 60)
                                }.frame(height: 260)
                                
                                VStack{
                                    Text("")
                                        .font(.system(size: 18, weight: .bold))
                                        .frame(width: 350, height: 80, alignment: .leading)
                                }
                            }.offset(y: 70)
                        }
            
                        VStack{
                            Text("")
                                .font(.system(size: 18, weight: .bold))
                                .frame(width: 350, height: 80, alignment: .leading)
                        }
                    }.frame(width: 420)
                }.scrollIndicators(.hidden).frame(maxHeight: .infinity).offset(y: 20)
            }.navigationDestination(isPresented: $isRootView) {
                HomeView()
            }.navigationBarBackButtonHidden(true)
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBackMatrixFeedbackPlay)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(
            Color.white,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .preferredColorScheme(.light)
    }
}

//struct MatrixFeedbackView_Previews: PreviewProvider{
//    static var previews: some View{
//        MatrixFeedback(play: item)
//    }
//}


