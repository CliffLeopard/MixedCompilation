//
//  ContentView.swift
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink("Demo For OC Call") {
                    OCCallView()
                }
                NavigationLink("Demo For Mixed") {
                    MixedView()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
