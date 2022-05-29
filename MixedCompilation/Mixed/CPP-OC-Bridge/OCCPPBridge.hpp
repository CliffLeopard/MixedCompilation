//
//  OCCPPBridge.hpp
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//  此类用于C++ 回调 OC 代码
//

#ifndef OCCPPBridge_hpp
#define OCCPPBridge_hpp

class OCCPPBridge {
    public:
        static void onEvent(int type, const char* p1, const char* p2, const char* p3);
};

#endif /* OCCPPBridge_hpp */
