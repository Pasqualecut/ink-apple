//
//  CameraView.swift
//  InkHunterRAPP
//
//  Created by Pasquale Cutolo on 17/11/22.
//

import SwiftUI

struct CameraView: View {
        
    var body: some View
    {
            NavigationStack
            {
                ZStack {
                    VStack {
                        Spacer()
                        Button(action: {
                            print("DEBUG: picture taken")
                        }) {
                            Image(systemName: "circle.inset.filled")
                                .frame(width: 80, height: 80)
                                .font(.system(size: 70))
                                .foregroundColor(.gray) //MAKE WHITE WHEN FULL SCREEN CAMERA IS ADDED
                                .cornerRadius(30)
                                .padding(20)
                        }
                    }.padding()
                    
                }
                    .toolbar(content:{
                        
                        ToolbarItem(placement: .navigationBarTrailing)
                        {
                            Button {
                                // CODE TO SWITCH CAMERAS
                            } label: {
                                Label("Switch Camera", systemImage: "camera.rotate")
                            }
                        }
                        
                    })
            }
    }
    
    struct CameraView_Previews: PreviewProvider {
        static var previews: some View {
            CameraView()
        }
    }
}
