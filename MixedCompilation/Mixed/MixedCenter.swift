//
//  MixedCenter.swift
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

import Foundation

class MixedCenter : NSObject, OCSwiftBridgeProtocal, ObservableObject{
    static var share = MixedCenter()
    
    @Published var type:Int32 = -1
    @Published var param1:String = "nil"
    @Published var param2:String = "nil"
    @Published var param3:String = "nil"
    
    func onEvent(_ type: Int32, param1 p1: String?, param2 p2: String?, param3 p3: String?) {
        debugPrint("Swfit-onEvent", type, p1 ?? "nil", p2 ?? "nil", p3 ?? "nil")
        self.type = type
        self.param1 = p1 ?? "nil"
        self.param2 = p2 ?? "nil"
        self.param3 = p3 ?? "nil"
    }
    
    static func initShare(){
        debugPrint("Swift init, and call OC ")
        MixedBridge.initBridge(share)
    }
    
    private override init() {}
    override class func copy() -> Any { return share }
    override class func mutableCopy() -> Any { return share}
}
