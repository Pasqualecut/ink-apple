//
//  ModalView.swift
//  TestLearnLightbulb
//
//  Created by Pasquale Cutolo on 22/11/22.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var showModal: Bool
    
    var body: some View {
        VStack (spacing: 80){
            Image(systemName: "lightbulb.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .foregroundColor(.yellow)
                .opacity(1)
            Button ("Dismiss Modal"){
                showModal.toggle()
            }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(.infinity)
        }
        
    }
    
    struct ModalView_Previews: PreviewProvider {
        static var previews: some View {
            ModalView(showModal: .constant(true))
        }
    }

