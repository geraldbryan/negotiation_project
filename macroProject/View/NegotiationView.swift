//
//  NegotiationView.swift
//  macroProject
//
//  Created by Gerald Bryan on 20/10/22.
//

import SwiftUI
import Speech
import AlertX
import AVFoundation

struct NegotiationView: View {
    @State var isPressedOut:Bool = false
    @State var actionPop:Bool = false
    @State private var showActionSheet = false
    @State private var activateLink = false
    @State private var isSeeBackground = false
    @EnvironmentObject var swiftUISpeech:SwiftUISpeech
    
    @ObservedObject private var mic = MicMonitor(numberOfSamples: 30)

    @State var audioPlayer: AVAudioPlayer!
    
    @Environment(\.managedObjectContext) private var viewContext

    @StateObject var item: Item

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
    
    func linkActive(){
        self.activateLink = false
        self.i = 0
        self.n = 0
        self.answer = false
        self.button1 = true
        self.button2 = true
        self.button3 = true
    }
    
    var body: some View {
        NavigationStack{
            if (self.i < myQuiz1.count){
                ZStack{
                    Color("yellow_tone").ignoresSafeArea()
                    
                    VStack{
                        ZStack{
                            Image("background").resizable()
                            
                            ZStack{
                                Image(myQuiz1[self.i].img!).frame(height: 300, alignment: .bottom).offset(y: 100)
                                ZStack{
                                        HStack {
                                            Image("negotiation_out").frame(alignment: .leading).padding(.top,-170).onTapGesture {
                                                showActionSheet = true
                                            }.alert("Are you Sure?", isPresented: $showActionSheet) {
                                                Button("No", role: .cancel){ }
                                                Button("Yes", role: .destructive, action: quitGame)
                                            } message: {
                                                Text("If you quit this negotiation, all progress will be lost.")
                                            }
                                            
                                            Image("negotiation_background").frame(alignment: .trailing).padding(.top,-170).padding(.leading,250).onTapGesture {
                                                    self.isSeeBackground = true
                                            }.alert("Objectives Reminder", isPresented: $isSeeBackground){
                                                Button("Continue", role: .cancel){}
                                            } message: {
                                                Text("\(storyDetail[0].objectives!)")
                                            }
                                    }
    //                                NavigationLink(destination: HomeView(), isActive: $activateLink,
    //                                                label: { EmptyView() })
                                    
                                }
                                ZStack{
                                    Image("chatbox")
                                    Text(myQuiz1[self.i].text!).padding(.leading,35).padding(.trailing,35).padding(.top,10).foregroundColor(.black).frame(maxWidth: 350)
                                }.padding(.top,300)
                            }
                        }.frame(height: 500).scaledToFill()
                        
                        VStack(spacing: 20){
                            if (swiftUISpeech.outputText .compare(myQuiz1[self.i].answer[n].components(separatedBy: .punctuationCharacters).joined(), options: .caseInsensitive) == .orderedSame){
                                if self.swiftUISpeech.isRecording {
                                    Text("Speak and click the button again to stop").foregroundColor(.gray).font(.system(size: 16))
                                    Text("\(swiftUISpeech.outputText)")
                                        .font(.title)
                                        .bold().foregroundColor(Color("green_tone")).frame(width: 350).frame(maxHeight: 80).minimumScaleFactor(0.5)
                                } else {
                                    Text("Good job!").foregroundColor(.gray).font(.system(size: 16)).bold()
                                    Text("\(swiftUISpeech.outputText)")
                                        .font(.title)
                                        .bold().foregroundColor(Color("green_tone")).frame(width: 350).frame(maxHeight: 80).minimumScaleFactor(0.5)
                                }
                                
                            } else {
                                if swiftUISpeech.outputText == ""{
                                    if self.swiftUISpeech.isRecording {
                                        Text("Speak and click the button again to stop").foregroundColor(.gray).font(.system(size: 16))
                                        Text("\(swiftUISpeech.outputText)")
                                            .font(.title)
                                            .bold().foregroundColor(.black).frame(width: 350).frame(maxHeight: 60).minimumScaleFactor(0.5)
                                    } else {
                                        Text("Select one to answer").foregroundColor(.gray).font(.system(size: 16))
                                    }
                                } else {
                                    if self.swiftUISpeech.isRecording {
                                        Text("Speak and click the button again to stop").foregroundColor(.gray).font(.system(size: 16))
                                        Text("\(swiftUISpeech.outputText)")
                                            .font(.title)
                                            .bold().foregroundColor(.black).frame(width: 350).frame(maxHeight: 60).minimumScaleFactor(0.5)
                                    } else {
                                        Text("Some words are wrong/missing, try again").foregroundColor(.gray).font(.system(size: 16)).bold()
                                        Text("\(swiftUISpeech.outputText)")
                                            .font(.title)
                                            .bold().foregroundColor(Color("red_tone")).frame(width: 350).frame(maxHeight: 60).minimumScaleFactor(0.5)
                                    }
                                }
                            }
                            
                            if answer == false{
                                if button1 {
                                    Button(action:{record(choice: 0)}){
                                        
                                        if self.swiftUISpeech.isRecording{
                                            VStack{
                                                ZStack{
                                                    Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(Color("green_tone")).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                                    HStack{
                                                        Text(myQuiz1[self.i].answer[0]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.white).frame(width:300,alignment: .leading)
                                                        Image(systemName:"mic.slash.fill").foregroundColor(.white)
                                                    }
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
                                            VStack{
                                                ZStack{
                                                    Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(Color("green_tone")).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                                    HStack{
                                                        Text(myQuiz1[self.i].answer[1]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.white).frame(width:300,alignment: .leading)
                                                        Image(systemName:"mic.slash.fill").foregroundColor(.white)
                                                    }
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
                                            VStack{
                                                ZStack{
                                                    Rectangle().frame(width:351,height: 59).cornerRadius(10).foregroundColor(Color("green_tone")).shadow(color: .gray, radius: 5, x: 0, y: 5)
                                                    HStack{
                                                        Text(myQuiz1[self.i].answer[2]).multilineTextAlignment(.leading).padding(.leading,21).font(.system(size: 14)).foregroundColor(.white).frame(width:300,alignment: .leading)
                                                        Image(systemName:"mic.slash.fill").foregroundColor(.white)
                                                    }
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
                                            Button(action:{
                                                buttonAction(option: n)
                                            }){
                                                Image("submit_on")
                                            }
                                        }
                                    }.padding(.top,10).onAppear {
                                        self.playCorrect()
                                    }
                                } else {
                                    VStack{
                                        HStack(spacing:20){
                                            
                                            Button(action:{ redo()
                                            }){
                                                Image("redo")
                                            }
                                            Button(action:{}){
                                                Image("submit_off")
                                            }
                                        }
                                    }.padding(.top,10).onAppear {
                                        self.playFalse()
                                    }
                                }
                            }
                        }.offset(y:20)
                        
                        Spacer()
                    }

                    
                }.navigationBarHidden(true).ignoresSafeArea()
            }else{
                feedbackView(feedback: self.swiftUISpeech.text, medal: self.swiftUISpeech.medal, style: self.swiftUISpeech.style, item: item)
            }
            }.navigationDestination(isPresented: $activateLink) {
                HomeView()
        }.navigationBarBackButtonHidden(true).onAppear(perform: linkActive)
        
    }
    
    func playCorrect(){
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
        } catch let error {
            print(error.localizedDescription)
        }
        
        let sound = Bundle.main.path(forResource: "correct", ofType: "wav")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        self.audioPlayer.play()
    }
    
    func playFalse(){
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
        } catch let error {
            print(error.localizedDescription)
        }
        
        let sound = Bundle.main.path(forResource: "false", ofType: "wav")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        self.audioPlayer.play()
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
        self.swiftUISpeech.style = myQuiz1[self.i].styleUsed[option]
        
        let newNegotiation = Negotiation(context: viewContext)
        newNegotiation.question = myQuiz1[self.i].text
        newNegotiation.answer = self.swiftUISpeech.outputText
        newNegotiation.number = myQuiz1[self.i].questionKey ?? 0
        newNegotiation.feedback = myQuiz1[self.i].feedbackEachAnswer[option]
        newNegotiation.timestamp = Date()

        item.addToNegotiations(newNegotiation)

        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
        self.i = myQuiz1[self.i].load_ques[option]
        
        self.swiftUISpeech.outputText = ""
    }
    
    private func normolizedSoundLevel(level: Float) -> CGFloat {
      let level = max(0.2, CGFloat(level) + 50) / 2
      return CGFloat(level * (100 / 25))
    }

    private func visualizerView() -> some View {
      VStack {
        HStack(spacing: 4) {
          ForEach(mic.soundSamples, id: \.self) { level in
            VisualBarView(value: self.normolizedSoundLevel(level: level))
          }
        }
      }
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
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.swiftUISpeech.stopRecording()
                    mic.stopMonitoring()
            } } else {
                self.swiftUISpeech.startRecording()
                mic.startMonitoring()
            }
            self.swiftUISpeech.isRecording.toggle()
        }
        
    }
}

//struct NegotiationView_Previews: PreviewProvider {
//    static var previews: some View {
//        NegotiationView().environmentObject(SwiftUISpeech())
//    }
//}
