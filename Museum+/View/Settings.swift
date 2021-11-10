//
//  Settings.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Settings: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    
    @State var new_visitedBefore:Bool = UserDefaults.standard.bool(forKey: "new_visitedBefore")
    var body: some View {
        Form{
            Section{
                    Picker("Picker",selection: $modeSelection.animation(.spring())) {
                        Text("New User").tag(0)
                        Text("Booked").tag(1)
                        Text("At Museum").tag(2)
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: modeSelection, perform: { newValue in
                        UserDefaults.standard.set(modeSelection, forKey: "mode")
                    })
            }
            
            if (modeSelection == 0){
                Section{
                    Toggle(isOn: $new_visitedBefore) {
                        Text("Have Visit Record")
                    }
                    .onChange(of: new_visitedBefore) { newValue in
                        UserDefaults.standard.set(new_visitedBefore,forKey: "new_visitedBefore")
                    }
                    Text("Visited: Exhibition 1 3")
                }
            }
            
            if (modeSelection == 1){
                Section{
                    Text("Booked to visit Science Museum")
                    Text("2 entrance ticket, 2 event tickets")
                }
            }
            if (modeSelection == 2){
                Section{
                    Text("Currently in Science Museum")
                    Text("Planned to visit Exhibition 1 3")
                    Text("Event will start at 14:50")
                }
            }

        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
