//
//  OCCase.m
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/25.
//

#import <Foundation/Foundation.h>
#import "OCCase.h"
//#import "CCase.h"
#import "CPCase.h"

@implementation OCCase

- (int) max:(int) p1 : (int) p2 {
    if (p1 < p2) {
        return p2;
    } else {
        return p1;
    }
}

- (int) cmax:(int) p1 : (int) p2 {
    return 3;
//    return cmax(p1, p2);
}

- (int) cppmax:(int) p1 : (int) p2 {
//    return 3;
    CPCase cpcase = CPCase();
    return cpcase.max(p1, p2);
}

@end

