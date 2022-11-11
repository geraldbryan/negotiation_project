//
//  testSoundView.swift
//  macroProject
//
//  Created by Gerald Bryan on 10/11/22.
//

import SwiftUI

struct testSoundView: View {
    
    @State var isOn: Bool = false
    @ObservedObject private var mic = MicMonitor(numberOfSamples: 30)
    
    var body: some View {
        VStack{
            Button(action: {soundWave()}){
                if isOn {
                    Text("abc")
                } else {
                    Text("bcd")
                }
                
                visualizerView()
            }
            
        }
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
    
    func soundWave(){
        if self.isOn {
            self.isOn = false
            mic.stopMonitoring()
        } else {
            self.isOn = true
            mic.startMonitoring()
        }
    }
}
