//
//  OCCallView.swift
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

import SwiftUI

struct OCCallView: View {
    var occase:OCCase = OCCase()
    var max = cmax(3,2)
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("OC   Fuction: \(occase.max(2, 3))")
            Text("C    Fuction: \(occase.cmax(2, 3))")
            Text("C    Fucntion: \(max)")
            Text("Cpp  Fuction: \(occase.cppmax(2, 3))")
            
        }
    }
}

struct OCCallView_Previews: PreviewProvider {
    static var previews: some View {
        OCCallView()
    }
}
