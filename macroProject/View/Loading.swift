//
//  ContentView.swift
//  LoadingPage
//
//  Created by Valen Meicella Ishen on 15/11/22.
//

import SwiftUI

extension Color {
    static let ui = Color.UI()
    
    struct UI {
         let primary = Color("green_tone")
    }
}

struct Loading: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var isActive:Bool = false
    
    var body: some View {
        if self.isActive {
            backgroundview()
            } else {
                ZStack(alignment: .top){
                    Color
                        .ui.primary
                        .ignoresSafeArea()
                    VStack{
                        GifImage(name: "lari100%").scaledToFill().frame(height: 500)
                        Text("Preparing Your Case")
                            .foregroundColor(
                                .white)
                            .font(
                                .title)
                            .fontWeight(
                                .semibold)
                        Text("**Tips**. Conversations with voice recognition ahead! Try playing in a conducive area.")
                            .foregroundColor(
                                .white)
                            .font(
                                .system(size: 14))
                            .multilineTextAlignment(
                                .center)
                            .padding()
                        Spacer()
                        CircularProgressBarDemo().padding()
                    }
                    .padding()
                    .frame(width: 360)
                }.onAppear {
                    
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
                       
                            withAnimation {
                                self.isActive = true
                            }
                        }
            }.navigationBarHidden(true)
        }
    }
}

struct CircularProgressBarDemo: View {

    @State var circleProgress: CGFloat = 0.0
    
    let timer = Timer.publish(every: 0.12, on: .main, in: .common).autoconnect()
    
    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
            withAnimation() {
                self.circleProgress += 0.0001
                if self.circleProgress >= 1.00 {
                    timer.invalidate()
                }
            }
        }
    }
    
    var body: some View {
        ZStack{
            Circle()
                .trim(
                    from: 0.0,
                    to: circleProgress)
                .stroke(
                    Color.white,
                    lineWidth: 5)
                .frame(
                    width: 100-15*2,
                    height: 100-15*2)
                .rotationEffect(
                    Angle(
                        degrees: -90))
            Text("\(Int(self.circleProgress*100))%")
                .font(
                    .custom("HelveticaNeue", size: 14.0)).foregroundColor(Color(white: 100))
        }.onReceive(timer) { _ in
            if circleProgress < 1.00 {
                self.startLoading()
            }
            else if (circleProgress == 1.00) {
                
            }
                
        }
    }
}

