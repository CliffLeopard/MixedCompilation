//
//  MixedDemoView.swift
//  MDRCase
//
//  Created by CliffLeopard on 2022/5/26.
//   TODO 
//

import SwiftUI

struct MixedDemoView: View {
    var occase:OCCase = OCCase()
    var max = cmax(3,2)
    var body: some View {
        ScrollView{
            VStack{
                Group{
                    Text("Demo For IOS Mixed Compilation")
                        .font(.headline)
                        .padding()
                    
                    Text("Swift")
                        .font(.caption)
                    Divider()
                    VStack(alignment:.leading) {
                        Button("Swift Call OC"){
                            
                        }
                        
                        Divider()
                        Button("Swift Call C"){
                            
                        }
                        Divider()
                        Button("Swift Call C++") {
                            
                        }
                        Divider()
                    }
                }
                
                Spacer()
                
                Group{
                    
                    Text("OC")
                        .font(.caption)
                    Divider()
                    VStack(alignment:.leading) {
                        
                        Button("OC Call Swift") {
                            
                        }
                        Divider()
                        Button("OC Call C") {
                            
                        }
                        Divider()
                        Button("OC Call C++"){
                            
                        }
                        Divider()
                    }
                }
                
                Spacer()
                
                Group{
                    Text("C")
                        .font(.caption)
                    Divider()
                    VStack(alignment:.leading){
                        Button("C Call Swift"){
                            
                        }
                        Divider()
                        Button("C Call OC"){
                            
                        }
                        Divider()
                        Button("C Call C++"){
                            
                        }
                        Divider()
                    }
                }
                
                Spacer()
                
                Group{
                    Text("C++")
                        .font(.caption)
                    Divider()
                    VStack(alignment:.leading) {
                        Button("C++ Call Swift"){
                            
                        }
                        Divider()
                        Button("C++ Call OC"){
                            
                        }
                        Divider()
                        Button("C++ Call C"){
                            
                        }
                        Divider()
                    }
                }
                Spacer()
                
            }.padding()
        }
    }
}

struct MixedDemoView_Previews: PreviewProvider {
    static var previews: some View {
        MixedDemoView()
    }
}
