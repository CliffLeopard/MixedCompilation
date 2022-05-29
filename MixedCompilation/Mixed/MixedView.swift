//
//  MixedView.swift
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

import SwiftUI

struct MixedView: View {
    @ObservedObject var mixed = MixedCenter.share
    var body: some View {
        VStack{
            Text("Type: \(mixed.type)")
            Text("P1: \(mixed.param1)")
            Text("P2: \(mixed.param2)")
            Text("P3: \(mixed.param3)")
        }.onAppear{
            MixedCenter.initShare()
        }
    }
}

struct MixedView_Previews: PreviewProvider {
    static var previews: some View {
        MixedView()
    }
}
