//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  DingTalkDylib.m
//  DingTalkDylib
//
//  Created by tf-swufe on 2019/5/22.
//  Copyright (c) 2019年 tf-swufe. All rights reserved.
//

#import "DingTalkDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import <MDCycriptManager.h>
#import <CoreLocation/CoreLocation.h>
@class AMapLocationManager;

CHDeclareClass(AMapLocationManager)

CHOptimizedMethod2(self,void, AMapLocationManager, locationManager, id, arg1,didUpdateLocations,id,arg2){
    CLLocation *location = [[CLLocation alloc] initWithLatitude:纬度 longitude:经度];
    arg2 = @[location];
    
    CHSuper2(AMapLocationManager, locationManager, arg1,didUpdateLocations,arg2);
}

CHConstructor{
    
    CHLoadLateClass(AMapLocationManager);
    CHClassHook2(AMapLocationManager, locationManager,didUpdateLocations);
    
}
