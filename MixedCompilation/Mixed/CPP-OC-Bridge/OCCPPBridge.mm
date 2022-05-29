//
//  OCCPPBridge.cpp
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

#include "OCCPPBridge.hpp"
#import "MixedBridge.h"

void OCCPPBridge::onEvent(int type, const char* p1, const char* p2, const char* p3){
    printf("OCBridege Received C++ Event \n");
    printf("OCBridege Pass  Event To  OC \n");
    [MixedBridge onEvent:type param1:p1 param2:p2 param3:p3];
}
