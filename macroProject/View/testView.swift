//
//  testView.swift
//  macroProject
//
//  Created by Gerald Bryan on 08/11/22.
//

import SwiftUI
import AVFoundation

struct testView: View {
//    1159, 1070, 1075, 1053, 1054, 1055, 1033, 1006
    
    var body: some View {
        VStack{
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1006))}) {
                Text("sound 1006")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1159))}) {
                Text("sound 1159")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1070))}) {
                Text("sound 1070")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1075))}) {
                Text("sound 1075")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1053))}) {
                Text("sound 1053")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1054))}) {
                Text("sound 1054")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1055))}) {
                Text("sound 1055")
            }
            Button(action: {AudioServicesPlayAlertSound(SystemSoundID(1033))}) {
                Text("sound 1033")
            }
        }
        
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy '-' HH:mm 'WIB'"
    return formatter
}()

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
