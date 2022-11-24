//
//  RootTabView.swift
//  InkHunterRAPP
//
//  Created by Pasquale Cutolo on 17/11/22.
//
import ARKit
import SwiftUI


struct RootTabView: View {
    var body: some View {
        TabView {
            
                MyTattoos()
                    .tabItem {
                        Label("My Tattoos", systemImage: "heart")
                    }
                TattoosGallery()
                    .tabItem {
                        Label("Tattoos Gallery", systemImage: "square.grid.2x2")
                    }
                MyPhotos()
                    .tabItem {
                        Label("My Photos", systemImage: "square.on.square")
                    }
            
            //.toolbarBackground(Color.gray, for: .tabBar)
            //.toolbarColorScheme(.dark, for: .tabBar)     tab bar scura
        }
    }
}


struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
