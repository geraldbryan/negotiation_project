//
//  TheoryMatrixView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 19/10/22.
//

import SwiftUI

struct TheoryMatrixView: View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var matrix: Matrix
    var btnBack3 : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }){
        HStack{
            Image(systemName: "chevron.left")
                .font(.system(size: 10, weight: .semibold))
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
                .background(Color("backButtonColor"))
                .clipShape(Circle())
                .frame(alignment: .topLeading)
            
            Text(matrix.title)
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.black)
                .frame(alignment: .topLeading)
            }
        .frame(width: 360, height: 100, alignment: .leading)
        }
    }
    
    var body: some View{
        
        ZStack{
            Color("backgroundColor").ignoresSafeArea()
            ScrollView(){
                VStack{
                    Image(matrix.image)
                        .frame(width: 360, height: 350, alignment: .leading)
                    
                    VStack{
                        HStack{
                            Image(systemName: "newspaper")
                            Text("Definition")
                        }.frame(width: 340, height: 20, alignment: .leading)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("backButtonColor"))
                        
                        Text(matrix.definition)
                            .font(.system(size: 15, weight: .light))
                            .frame(width: 340, height: 100, alignment: .leading)
                    }
                    
                    VStack{
                        HStack{
                            Image(systemName: "hand.raised")
                            Text("Implementation")
                        }.frame(width: 340, height: 20, alignment: .leading)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("backButtonColor"))
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.imp1)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.imp2)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                    }.offset(y:20)
                    
                    VStack{
                        HStack{
                            Image(systemName: "person.crop.circle.badge.checkmark")
                            Text("Example")
                        }.frame(width: 340, height: 20, alignment: .leading)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("backButtonColor"))
                        
                        Text(matrix.example)
                            .font(.system(size: 15, weight: .light))
                            .frame(width: 340, height: 140, alignment: .leading)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 350, height: 260)
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                            VStack{
                                Text(matrix.sub1)
                                    .font(.system(size: 15, weight: .bold))
                                    .frame(width: 350, height: 20, alignment: .leading)
                                    .offset(x: 10)
                                Text(matrix.subinfo1)
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 330, height: 60)
                                Text(matrix.sub2)
                                    .font(.system(size: 15, weight: .bold))
                                    .frame(width: 350, height: 20, alignment: .leading)
                                    .offset(x: 10)
                                Text(matrix.subinfo2)
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 330, height: 60)
                            }
                        }
                    }.offset(y:60)
                    
                    VStack{
                        HStack{
                            Image(systemName: "checkmark")
                            Text("Advantages")
                        }.frame(width: 340, height: 20, alignment: .leading)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("backButtonColor"))
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.advan1)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.advan2)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.advan3)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.advan4)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                    }.offset(y:100)
                    
                    
                    VStack{
                        HStack{
                            Image(systemName: "xmark")
                            Text("Disadvantages")
                        }.frame(width: 340, height: 20, alignment: .leading)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("backButtonColor"))
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.dis1)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.dis2)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.dis3)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                        Divider().frame(width: 360)
                        HStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 5))
                            Text(matrix.dis4)
                                .font(.system(size: 15, weight: .light))
                                .frame(width: 340, height: 80, alignment: .leading)
                        }
                    }.offset(y:140)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 120)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        VStack{
                            Text(matrix.urlName)
                                .font(.system(size: 15, weight: .bold))
                                .frame(width: 350, height: 20)
                                .foregroundColor(Color("backButtonColor"))
                            Link(destination: matrix.url, label: {
                                Text(matrix.urlText)
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 330, height: 50, alignment: .center)
                            })
                        }
                    }.offset(y: 150)
                    
                    
                    Text("")
                        .font(.system(size: 15, weight: .light))
                        .frame(width: 340, height: 180, alignment: .leading)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack3)
    }
}

struct TheoryMatrixView_Previews: PreviewProvider{
    static var previews: some View{
        TheoryMatrixView(matrix: MatrixList.matrixData.first!)
    }
}
