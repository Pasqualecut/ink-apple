//
//  MyTattoos.swift
//  InkHunterRAPP
//
//  Created by Pasquale Cutolo on 17/11/22.
//

import SwiftUI

struct MyTattoos: View
{
    @State var Camera = false
    
    var body: some View
    {
        NavigationStack
        {
            ScrollView /* Permette di scrollare la pagina */ (showsIndicators: false) //Elimina la barra di scorrimento
            {
                
                    Image ("Smile")
                    .resizable()
                    .frame(width: 350, height: 500)
                                        
                ZStack{
                    HStack {
                        Spacer()
                        Text("TRY")
                            .frame(width: 70, height: 45.0)
                            .background(.red)
                            .cornerRadius(3)
                        
                    }.padding()
                    .onTapGesture {
                        Camera.toggle()
                    }//on tap
                    .fullScreenCover(isPresented: $Camera, content: AR.init)
                }
                
                
                Text("No related designs found")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .navigationTitle("My Tattoos")
                    .navigationBarTitleDisplayMode(.inline)
                
            }.padding()
            
            
            //Vorrei fare questo text leggermente piu sopra NON IMPORTANTE
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button(action:{})
                        {
                            Image(systemName: "chevron.backward")
                                .imageScale(.large)
                        }
                        
                    }
                }
        }
    }
    
}


struct MyTattoos_Previews: PreviewProvider
{
    static var previews: some View
    {
        MyTattoos()
    }
}
