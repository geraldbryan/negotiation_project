import Speech
import SwiftUI
import Foundation

struct SpeechButton: View {
    
    @State var isPressed:Bool = false
    @State var actionPop:Bool = false
    @EnvironmentObject var swiftUISpeech:SwiftUISpeech
    
    var body: some View {
        
        Button(action:{// Button
            if(self.swiftUISpeech.getSpeechStatus() == "Denied - Close the App"){// checks status of auth if no auth pop up error
                self.actionPop.toggle()
            }else{
                if self.swiftUISpeech.isRecording{ DispatchQueue.main.asyncAfter(deadline: .now() + 0.55) {
                    self.swiftUISpeech.stopRecording()
             } } else { self.swiftUISpeech.startRecording() }
                self.swiftUISpeech.isRecording.toggle()
            }
        }){ if self.swiftUISpeech.isRecording {
            Image("stop_record")
        } else {
            Image("start_record")
        }
        }.opacity(self.swiftUISpeech.isRecordButton ? 1.0 : 0.0)
            .actionSheet(isPresented: $actionPop){
                ActionSheet(title: Text("ERROR: - 1"), message: Text("Access Denied by User"), buttons: [ActionSheet.Button.destructive(Text("Reinstall the Appp"))])// Error catch if the auth failed or denied
            }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        SpeechButton().environmentObject(SwiftUISpeech())
    }
}
