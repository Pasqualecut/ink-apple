//
//  ContentView.swift
//  TestLearnLightbulb
//
//  Created by Pasquale Cutolo on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Text("Tab Content 1").tabItem { Label("On/Off", systemImage: "switch.2") }.tag(1)
            Text("Tab Content 2").tabItem { Label("Color", systemImage: "eyedropper") }.tag(2)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
