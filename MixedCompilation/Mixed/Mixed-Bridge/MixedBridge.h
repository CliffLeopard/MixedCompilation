//
//  MixedBridge.hpp
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

#ifndef MixedBridge_h
#define MixedBridge_h
#import "OCSwiftBridgeProtocal.h"

@interface MixedBridge: NSObject

// 初始化
+ (void) initBridge:(id<OCSwiftBridgeProtocal>) eventReceiver;


// 事件回调
+ (void) onEvent:(int) type param1:(const char*) p1 param2:(const char*)p2  param3:(const char*)p3;

@end

#endif /* MixedBridge_hpp */
