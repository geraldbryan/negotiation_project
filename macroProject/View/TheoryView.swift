//
//  TheoryView.swift
//  macroProject
//
//  Created by Jason Lauwrin on 30/09/22.
//

import SwiftUI

struct TheoryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
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
            
            Text("  Theory")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.black)
                .frame(alignment: .topLeading)
            }
        }
    }
    
    var knowledges: [Knowledge] = KnowledgeList.knowledgeData
    var matrix: [Matrix] = MatrixList.matrixData
    var body: some View {
        ZStack{
            Color("yellow_tone").ignoresSafeArea()
            
            ScrollView(){
                VStack{
                    VStack{
                        Text("Negotiation Matrix")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(.black))
                            .frame(width: 350, alignment: .leading)
                            .offset(x:0, y: 20).foregroundColor(Color.black)
                        
                        Text("Based on Lewicki & Hiam’s Matrix to improve style implementation knowledge when doing negotiation.")
                            .font(.system(size: 15, weight: .light))
                            .foregroundColor(Color(.black))
                            .frame(width: 350, alignment: .leading)
                            .offset(x:0, y: 30).foregroundColor(Color.black)

                        List(matrix, id: \.id){ matrixItem in
                            NavigationLink(destination: TheoryMatrixView(matrix: matrixItem)){
                                Image(matrixItem.btnImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 350, height: 65)
                                    .offset(x: 10)
                            }
                            .navigationBarBackButtonHidden(true)
                                .background(Color("yellow_tone"))
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color("yellow_tone"))
                        }
                        .padding(.top)
                        .scrollContentBackground(.hidden)
                        .scrollDisabled(true)
                        .offset(x: 0, y: -5)
                    }.frame(height: 560)
                    
                    VStack{
                        Text("Negotiation Knowledge")
                            .foregroundColor(Color(.black))
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 350, alignment: .leading)
                            .offset(x:0, y: 20).foregroundColor(Color.black)
                        
                        Text("Interesting ways on improving negotiation skills special created by Negotio.")
                            .foregroundColor(Color(.black))
                            .font(.system(size: 15, weight: .light))
                            .frame(width: 350, alignment: .leading)
                            .offset(x:0, y: 30).foregroundColor(Color.black)

                        List(knowledges, id: \.id){ knowledgeItem in
                            NavigationLink(destination: TheoryKnowledgeView(knowledge: knowledgeItem)){
                                Image(knowledgeItem.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 350, height: 65)
                                    .offset(x: 10)
                            }

                            .navigationBarBackButtonHidden(true)
                                .background(Color("yellow_tone"))
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color("yellow_tone"))
                        }
                        .padding(.top)
                        .scrollContentBackground(.hidden)
                        .scrollDisabled(true)
                        .offset(x: 0, y: -5)
                    }
                    .frame(height: 300)
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(
            Color.white,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .preferredColorScheme(.light)
        .frame(maxHeight: .infinity)
    }
}

struct TheoryView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
