//
//  TheoryMatrixView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 19/10/22.
//

import SwiftUI

struct TheoryMatrixView: View{
    
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    @State private var isExpanded4 = false
    @State private var isExpanded5 = false
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
                .background(Color("green_tone"))
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
            Color("yellow_tone").ignoresSafeArea()
            ScrollView(){
                VStack{
                    Image(matrix.image)
                        .frame(width: 360, height: 350, alignment: .center)
                        .offset(x: -15)
                    
                    VStack{
                        //definition
                        DisclosureGroup(isExpanded: $isExpanded1){
                            HStack{
                                Text(matrix.definition)
                                    .font(.system(size: 15, weight: .semibold))
                                    .frame(width: 330, height: 100, alignment: .leading)
                                    .foregroundColor(Color(.white))
                            }.frame(width: 400)
                            .background{
                                Color("green_tone")
                            }.cornerRadius(0).frame(width: 400).offset(x: 12)
                            .cornerRadius(0)
                        } label: {
                            HStack{
                                Image("definition_button")
                            }.frame(width: 310, alignment: .leading)
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("green_tone"))
                        }.frame(width: 0, alignment: .top)
                            .accentColor(Color("green_tone"))
                            .offset(x: -15)
                        
                        Spacer()
                        //implementation
                        DisclosureGroup(isExpanded: $isExpanded2){
                            VStack{
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.imp1)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().overlay(.white).frame(width: 360)
                                    .frame(width: 320)
                                    .foregroundColor(Color(.white))
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.imp2)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 100, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }.frame(width: 400)
                            }
                            .background{
                                Color("green_tone")
                            }.cornerRadius(0).frame(width: 400).offset(x: 12)
                            .cornerRadius(0)
                        } label: {
                            HStack{
                                Image("implementation_button")
                            }.frame(width: 310, alignment: .leading)
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("green_tone"))
                        }.frame(width: 0, alignment: .top)
                            .accentColor(Color("green_tone"))
                            .offset(x: -15)
                            
                        Spacer()
                        //Example
                        DisclosureGroup(isExpanded: $isExpanded3){
                            VStack{
                                Text(matrix.example)
                                    .font(.system(size: 15, weight: .semibold))
                                    .frame(width: 320, height: 140, alignment: .leading)
                                    .foregroundColor(Color(.white))
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .frame(width: 330, height: 260)
                                        .foregroundColor(.white)
                                        .shadow(radius: 2)
                                    VStack{
                                        Text(matrix.sub1)
                                            .font(.system(size: 15, weight: .bold))
                                            .frame(width: 330, height: 20, alignment: .leading)
                                            .offset(x: 10)
                                            .foregroundColor(Color(.black))
                                        Text(matrix.subinfo1)
                                            .font(.system(size: 15, weight: .semibold))
                                            .frame(width: 310, height: 60)
                                            .foregroundColor(Color(.black))
                                        Text(matrix.sub2)
                                            .font(.system(size: 15, weight: .bold))
                                            .frame(width: 330, height: 20, alignment: .leading)
                                            .offset(x: 10)
                                            .foregroundColor(Color(.black))
                                        Text(matrix.subinfo2)
                                            .font(.system(size: 15, weight: .semibold))
                                            .frame(width: 310, height: 60)
                                            .foregroundColor(Color(.black))
                                    }
                                }
                                Text("")
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 400, height: 20)
                                    .foregroundColor(Color(.black))
                            }
                            .background{
                                Color("green_tone")
                            }.cornerRadius(0).frame(width: 400).offset(x: 12)
                            .cornerRadius(0)
                        } label: {
                            HStack{
                                Image("example_button")
                            }.frame(width: 310,alignment: .leading)
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("green_tone"))
                        }.frame(width: 0)
                            .accentColor(Color("green_tone"))
                            .offset(x: -15)
                        
                        Spacer()
                        //Advantages
                        DisclosureGroup(isExpanded: $isExpanded4){
                            VStack{
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.advan1)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().frame(width: 360).overlay(.white)
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.advan2)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().frame(width: 360).overlay(.white)
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.advan3)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().frame(width: 360).overlay(.white)
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.advan4)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 90, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                            }
                            .background{
                                Color("green_tone")
                            }.cornerRadius(0).frame(width: 400).offset(x: 12)
                            .cornerRadius(0)
                        } label: {
                            HStack{
                                Image("advantages_button")
                            }.frame(width: 310, alignment: .leading)
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("green_tone"))
                        }.frame(width: 0)
                            .accentColor(Color("green_tone"))
                            .offset(x: -15)
                        
                        Spacer()
                        //disadvantages
                        DisclosureGroup(isExpanded: $isExpanded5){
                            VStack{
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.dis1)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().frame(width: 360).overlay(.white)
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.dis2)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().frame(width: 360).overlay(.white)
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.dis3)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                                Divider().frame(width: 360).overlay(.white)
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(Color(.white))
                                    Text(matrix.dis4)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 320, height: 80, alignment: .leading)
                                        .foregroundColor(Color(.white))
                                }
                            }
                            .background{
                                Color("green_tone")
                            }.cornerRadius(0).frame(width: 400).offset(x: 12)
                            .cornerRadius(0)
                        } label: {
                            HStack{
                                Image("disadvantages_button")
                            }.frame(width: 310, alignment: .leading)
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("green_tone"))
                        }.frame(width: 0)
                            .accentColor(Color("green_tone"))
                            .offset(x: -15)
//                            .accentColor(.clear)
                
                    }
                    
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 120)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        VStack{
                            Text(matrix.urlName)
                                .font(.system(size: 15, weight: .bold))
                                .frame(width: 350, height: 20)
                                .foregroundColor(Color("green_tone"))
                            Link(destination: matrix.url, label: {
                                Text(matrix.urlText)
                                    .font(.system(size: 15, weight: .light))
                                    .frame(width: 330, height: 50, alignment: .center)
                                    .foregroundColor(Color(.black))
                            })
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack3)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(
            Color.white,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .preferredColorScheme(.light)
        .scrollIndicators(.hidden)
    }
}

struct TheoryMatrixView_Previews: PreviewProvider{
    static var previews: some View{
        TheoryMatrixView(matrix: MatrixList.matrixData.first!)
    }
}
