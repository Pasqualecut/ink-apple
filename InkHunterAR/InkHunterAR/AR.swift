//
//  AR.swift
//  InkHunterRAPP
//
//  Created by Pasquale Cutolo on 18/11/22.
//

import ARKit
import SwiftUI
import RealityKit

//presentationMode.wrappedValue.dismiss()

struct AR : View {
    @Environment(\.presentationMode)var presentationMode
    
    var body: some View {
        
        NavigationStack{
        ZStack {
            
            ARViewContainer().edgesIgnoringSafeArea(.all)
            
                VStack {
                    Spacer()
                    HStack(spacing: 45){
                        Button(action: {
                            print("DEBUG: picture taken")
                        }) {
                            Text("Photos")                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .background(Rectangle()
                                    .fill(.clear)
                                    .overlay(Rectangle().stroke(.white, lineWidth: 1))
                                    .frame(width: 90, height: 40))
                        }
                        Button(action: {
                            print("DEBUG: picture taken")
                        }) {
                            Image(systemName: "circle.inset.filled")
                                .frame(width: 80, height: 80)
                                .font(.system(size: 58))
                                .foregroundColor(.white)
                        }.padding(.trailing, 125)
                        
                    }
                    
                }
                .toolbar(content:{
                    
                    ToolbarItem(placement: .navigationBarTrailing)
                    {
                        Button {
                            // CODE TO SWITCH CAMERAS
                                }label: {
                            Label("Switch Camera", systemImage: "camera.rotate")
                                }.font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                        ToolbarItem(placement: .navigationBarLeading)
                        {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.backward")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            }
                            
                        }
                    
                })
            
            }
            
        }
        
    }
    
    struct ARViewContainer: UIViewRepresentable {
        
        
        func makeUIView(context: Context) -> ARView {
            
            let arView = ARView(frame: .zero)
            
            // Load the "Box" scene from the "Experience" Reality File
            let faceAnchor = try! Experience.loadFace()
            
            // Add the box anchor to the scene
            arView.scene.anchors.append(faceAnchor)
            
            return arView
            
        }
        
        func updateUIView(_ uiView: ARView, context: Context) {}
        
    }
}

#if DEBUG
    struct ContentView_Previews : PreviewProvider {
        static var previews: some View {
            AR()
        }
    }
#endif
