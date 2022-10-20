import Speech
import SwiftUI
import Foundation

@MainActor
public class SwiftUISpeech: ObservableObject{
    init(){
        
        //Requests auth from User
        SFSpeechRecognizer.requestAuthorization{ authStatus in
            OperationQueue.main.addOperation {
                switch authStatus {
                case .authorized:
                    break
                    
                case .denied:
                    break
                    
                case .restricted:
                    break
                    
                case .notDetermined:
                    break
                    
                default:
                    break
                }
            }
        }// end of auth request
        
        recognitionTask?.cancel()
        self.recognitionTask = nil
        
    }
    
    func getButton()->SpeechButton{ // returns the button
        return button
    }// end of get button
    
    func startRecording(){// starts the recording sequence
        // restarts the text
        outputText = "";
        
        // Configure the audio session for the app.
        let audioSession = AVAudioSession.sharedInstance()
        let inputNode = audioEngine.inputNode
        
        // try catch to start audio session
        do{
            try audioSession.setCategory(.record, mode: .measurement, options: .duckOthers)
            try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
        }catch{
            print("ERROR: - Audio Session Failed!")
        }
        
        // Configure the microphone input and request auth
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, _) in
            self.recognitionRequest?.append(buffer)
        }
        
        audioEngine.prepare()
        
        do{
            try audioEngine.start()
        }catch{
            print("ERROR: - Audio Engine failed to start")
        }
        
        // Create and configure the speech recognition request.
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        recognitionRequest!.shouldReportPartialResults = true
        
        guard let recognizer = SFSpeechRecognizer(), recognizer.isAvailable else {
            print("Speech recognition is not available")
            return
        }
        
        recognizer.recognitionTask(with: recognitionRequest!) { result, error in
            guard error == nil else {
                print("Recognition error \(error!.localizedDescription)")
                return
            }
            guard let result = result else { return }
            /// Checks is result of recognition is final and its transcriptionn won't change
            print("got a new result: \(result.bestTranscription.formattedString), final : \(result.isFinal)")
            
            if result.isFinal {
                /// Async execution of speech recognition result as string
                self.outputText = result.bestTranscription.formattedString
            } else{
                self.outputText = result.bestTranscription.formattedString
            }
        }
        
        
    }// end of stop recording
    
    func stopRecording(){// end recording
        
        self.isRecordButton.toggle()
        
        recognitionRequest?.endAudio()
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        recognitionRequest!.shouldReportPartialResults = true
        
        audioEngine.stop()
        
        print("end audio \(outputText)")

        self.audioEngine.inputNode.removeTap(onBus: 0)
        //
        //        self.recognitionTask?.cancel()
        self.recognitionTask = nil
        
    }// restarts the variables
    
    
    func getSpeechStatus()->String{// gets the status of authorization
        
        switch authStat{
            
        case .authorized:
            return "Authorized"
            
        case .notDetermined:
            return "Not yet Determined"
            
        case .denied:
            return "Denied - Close the App"
            
        case .restricted:
            return "Restricted - Close the App"
            
        default:
            return "ERROR: No Status Defined"
            
        }// end of switch
        
    }// end of get speech status
    
    /* Variables **/
    @Published var isRecording:Bool = false
    @Published var isRecordButton:Bool = true
    @Published var button = SpeechButton()
    
    private let speechRecognizer = SFSpeechRecognizer()
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private let authStat = SFSpeechRecognizer.authorizationStatus()
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
    public var outputText:String = "";
    public var text:String = "";
    public var medal:String = "";
    
}
