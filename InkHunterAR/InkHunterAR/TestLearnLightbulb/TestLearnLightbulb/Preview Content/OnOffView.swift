//
//  OnOffView.swift
//  TestLearnLightbulb
//
//  Created by Pasquale Cutolo on 22/11/22.
//

import SwiftUI

struct OnOffView: View {
    
    @State var opacity: Double = 0
    @State var showModal: Bool = false
    
    var body: some View {
        VStack (spacing: 80){
            Image(systemName: "lightbulb.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .foregroundColor(.yellow)
                .opacity(opacity)
            Group{
                Button("On/Off"){
                    if opacity == 0 {
                        opacity = 1
                    } else {
                        opacity = 0
                    }
                }
                Button ("Show Modal"){
                    showModal.toggle()
                }
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(.infinity)
            .sheet(isPresented: $showModal, content: ModalView(showModal: $showModal))    }
        
        struct OnOffView_Previews: PreviewProvider {
            static var previews: some View {
                OnOffView()
            }
        }
    }
}
