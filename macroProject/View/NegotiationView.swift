//
//  NegotiationView.swift
//  macroProject
//
//  Created by Gerald Bryan on 20/10/22.
//

import SwiftUI
import Speech
import AlertX

struct NegotiationView: View {
    @State var isPressedOut:Bool = false
    @State var actionPop:Bool = false
    @State private var showActionSheet = false
    @State private var activateLink = false
    @State private var isSeeBackground = false
    @EnvironmentObject var swiftUISpeech:SwiftUISpeech

    //number of question
    @State var i : Int = 0
    @State var n : Int = 0
    @State var answer:Bool = false
    @State var button1:Bool = true
    @State var button2:Bool = true
    @State var button3:Bool = true
    
    func quitGame(){
        activateLink.toggle()
    }
    
    var body: some View {
        if (self.i < myQuiz1.count){
            ZStack{
                Color("yellow_tone").ignoresSafeArea()
                
                VStack{
                    ZStack{
                        Image("background")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300).frame(maxWidth: .infinity)
                        HStack {
                            NavigationLink(destination: HomeView(), isActive: $activateLink,
                                           label: { EmptyView() })
                            Image("negotiation_out").frame(alignment: .leading).padding(.top,-170).onTapGesture {
                                showActionSheet = true
                            }.alert("Are you Sure?", isPresented: $showActionSheet) {
                                Button("No", role: .cancel){ }
                                Button("Yes", role: .destructive, action: quitGame)
                            } message: {
                                Text("If you quit this negotiation, all progress will be lost.")
                            }
                            
                            
                            NavigationLink(destination: backgroundview(), isActive:self.$isSeeBackground){
                                    EmptyView()
                                }
                            Image("negotiation_background").frame(alignment: .trailing).padding(.top,-170).padding(.leading,250).onTapGesture {
                                self.isSeeBackground = true
                            }
                        }
                        ZStack{
                            Image("negotiator")
                            ZStack{
                                Image("chatbox")
                                Text(myQuiz1[self.i].text!).padding(.leading,35).padding(.trailing,35).padding(.top,10).foregroundColor(.black)
                            }.padding(.top,300)
                        }
                    }.padding(.bottom,50)
                    
                    VStack(spacing: 20){
                        if (swiftUISpeech.outputText .compare(myQuiz1[self.i].answer[n].components(separatedBy: .punctuationCharacters).joined(), options: .caseInsensitive) == .orderedSame){
                            Text("\(swiftUISpeech.outputText)")
                                .font(.title)
                                .bold().foregroundColor(Color("green_tone")).frame(width: 350).minimumScaleFactor(0.5)
                        } else {
                            Text("\(swiftUISpeech.outputText)")
                                .font(.title)
                                .bold().foregroundColor(Color("red_tone")).frame(width: 350).minimumScaleFactor(0.5)
                        }
                        
                        if answer == false{
                            if button1 {
                                Button(action:{record(choice: 0)}){
                                    
                                    if self.swiftUISpeech.isRecording{
                                        ZStack (){
                                            Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(Color("green_tone")).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            HStack{
                                                Text(myQuiz1[self.i].answer[0]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.white).frame(width:300,alignment: .leading)
                                                Image(systemName:"mic.slash.fill").foregroundColor(.white)
                                            }
                                        }
                                    } else {
                                        ZStack (){
                                            Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(.white).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            HStack{
                                                Text(myQuiz1[self.i].answer[0]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.black).frame(width:300,alignment: .leading)
                                                Image(systemName:"mic.fill").foregroundColor(Color("green_tone"))
                                            }
                                        }
                                        
                                    }
                                }
                            }

                            if button2{
                                Button(action:{record(choice: 1)}){
                                    if self.swiftUISpeech.isRecording{
                                        ZStack (){
                                            Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(Color("green_tone")).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            HStack{
                                                Text(myQuiz1[self.i].answer[1]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.white).frame(width:300,alignment: .leading)
                                                Image(systemName:"mic.slash.fill").foregroundColor(.white)
                                            }
                                        }
                                    } else {
                                        ZStack (){
                                            Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(.white).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            HStack{
                                                Text(myQuiz1[self.i].answer[1]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.black).frame(width:300,alignment: .leading)
                                                Image(systemName:"mic.fill").foregroundColor(Color("green_tone"))
                                            }
                                        }
                                        
                                    }
                                }
                            }

                            if button3{
                                Button(action:{record(choice: 2)}){
                                    if self.swiftUISpeech.isRecording{
                                        ZStack (){
                                            Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(Color("green_tone")).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            HStack{
                                                Text(myQuiz1[self.i].answer[2]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.white).frame(width:300,alignment: .leading)
                                                Image(systemName:"mic.slash.fill").foregroundColor(.white)
                                            }
                                        }
                                    } else {
                                        ZStack (){
                                            Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(.white).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            HStack{
                                                Text(myQuiz1[self.i].answer[2]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.black).frame(width:300,alignment: .leading)
                                                Image(systemName:"mic.fill").foregroundColor(Color("green_tone"))
                                            }
                                        }
                                        
                                    }

                                }.padding(.bottom,20)
                            }
                        } else {
                            ZStack (){
                                Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(.white)
                                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                HStack{
                                    Text(myQuiz1[self.i].answer[self.n]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(Color("green_tone")).frame(width:300,alignment: .leading)
                                }
                            }
                        }
                        
                        if swiftUISpeech.isRecordButton == false {
                            if (swiftUISpeech.outputText .compare(myQuiz1[self.i].answer[n].components(separatedBy: .punctuationCharacters).joined(), options: .caseInsensitive) == .orderedSame){
                                VStack{
                                    HStack(spacing:20){
                                        Button(action:{ redo()
                                        }){
                                            Image("redo")
                                        }
                                        Button(action:{buttonAction(option: n)}){
                                            Image("submit_on")
                                        }
                                    }.padding(.top,80)
                                }
                                
                            } else {
                                HStack(spacing:20){
                                    Button(action:{ redo()
                                    }){
                                        Image("redo")
                                    }
                                    Button(action:{}){
                                        Image("submit_off")
                                    }
                                }.padding(.top,80)
                            }
                        }
                    }.offset(y:20)
                    
                    Spacer()
                }

                
            }.navigationBarHidden(true).ignoresSafeArea()
        }else{
            feedbackView()
        }
    }
    
    func unpairAndSetDefaultDeviceInformation() {
        // YOUR CODE IS HERE
        DispatchQueue.main.async {
            self.activateLink = true
        }
    }
    
    func redo(){
        self.swiftUISpeech.isRecordButton.toggle()
        self.answer.toggle()
        self.swiftUISpeech.outputText = ""
    }
    
    func buttonAction (option:Int){
        self.answer.toggle()
        self.swiftUISpeech.isRecordButton.toggle()
        self.swiftUISpeech.text = myQuiz1[self.i].feedbackString[option]
        self.swiftUISpeech.medal = myQuiz1[self.i].medal[option]
        self.i = myQuiz1[self.i].load_ques[option]
        self.swiftUISpeech.outputText = ""
    }
    
    func record(choice: Int){
        self.n = choice
        if choice == 0{
            self.button2.toggle()
            self.button3.toggle()
        } else if choice == 1{
            self.button1.toggle()
            self.button3.toggle()
        } else {
            self.button1.toggle()
            self.button2.toggle()
        }
        
        if(self.swiftUISpeech.getSpeechStatus() == "Denied - Close the App"){// checks status of auth if no auth pop up error
            self.actionPop.toggle()
        }else{
            if self.swiftUISpeech.isRecording{
                self.answer.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.swiftUISpeech.stopRecording()
            } } else { self.swiftUISpeech.startRecording() }
            self.swiftUISpeech.isRecording.toggle()
        }
        
    }
}

struct NegotiationView_Previews: PreviewProvider {
    static var previews: some View {
        NegotiationView().environmentObject(SwiftUISpeech())
    }
}
