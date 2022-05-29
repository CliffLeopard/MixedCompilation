//
//  CPPMixedCase.cpp
//  MixedCompilation
//
//  Created by CliffLeopard on 2022/5/29.
//

#include "CPPMixedCase.hpp"
#include "OCCPPBridge.hpp"
#include "iostream"
using namespace std;
void CPPMixedCase::onEvent(int type, const char* p1, const char* p2, const char* p3){
    cout<< "C++ receive Event" << endl;
    cout<< "C++ Pass Event To OC" << endl;
    OCCPPBridge::onEvent(type, p1, p2, p3);
}
