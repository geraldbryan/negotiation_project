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
    
    @State var style: String
    
    @State var showAlert: Bool = false
    
    @StateObject var item: Item
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    @Environment(\.managedObjectContext) private var viewContext
    
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
            
                    NavigationLink(destination: MatrixFeedback(play : item)){
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
        .onAppear{self.updateStyle(item: item)}
    }
    
    func updateStyle(item: Item){
        item.objectives = self.medal
        item.feedback = self.feedback
        item.style = self.style
        
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }

}

//struct feedbackView_Previews: PreviewProvider {
//    static var previews: some View {
//        feedbackView()
//    }
//}
