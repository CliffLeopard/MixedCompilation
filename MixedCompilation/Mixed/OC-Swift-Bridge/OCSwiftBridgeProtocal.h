//
//  OCSwiftBridgeProtocal.h
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//  此类用于OC回调Swift
//

#ifndef OCSwiftBridgeProtocal_h
#define OCSwiftBridgeProtocal_h

#import "Foundation/Foundation.h"
@protocol OCSwiftBridgeProtocal <NSObject>

- (void) onEvent:(int) type param1:(NSString*) p1 param2:(NSString*)p2  param3:(NSString*)p3;

@end
#endif /* OCSwiftBridgeProtocal_h */
