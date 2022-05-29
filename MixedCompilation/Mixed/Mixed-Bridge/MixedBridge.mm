//
//  MixedBridge.cpp
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

#import "OCSwiftBridgeProtocal.h"
#import "MixedBridge.h"
#import "Foundation/Foundation.h"
#import "CPPMixedCase.hpp"

static id<OCSwiftBridgeProtocal>  receiver;

@implementation MixedBridge
// 初始化
+ (void) initBridge:(id<OCSwiftBridgeProtocal>) eventReceiver{
    receiver = eventReceiver;
    
    printf("OC init Success \n");
    printf("OC  Create Event and Pass  It To C++ \n");
    
    CPPMixedCase::onEvent(12, "Hello P1", "Hello P2", "Hello P3");
}


// 事件回调
+ (void) onEvent:(int) type param1:(const char*) p1 param2:(const char*)p2  param3:(const char*)p3 {
    
    printf("OC Received OCBridge Event \n");
    printf("OC Pass  Event To  Swift \n");
    
    NSString * str1 = [[NSString alloc] initWithFormat:@"%s",p1];
    NSString * str2 = [[NSString alloc] initWithFormat:@"%s",p2];
    NSString * str3 = [[NSString alloc] initWithFormat:@"%s",p3];
    [receiver onEvent:type param1:str1  param2:str2 param3:str3];
}
@end
