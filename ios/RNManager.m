//
//  RNManager.m
//  RNBridgeDemoApp
//
//  Created by Reetesh Kumar on 5/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(MyViewManager, NSObject)

RCT_EXTERN_METHOD(showDataWithName:(NSString *)name)

@end
