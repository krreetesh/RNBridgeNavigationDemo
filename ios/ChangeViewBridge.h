//
//  ChangeViewBridge.h
//  RNBridgeDemoApp
//
//  Created by Reetesh Kumar on 5/6/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface ChangeViewBridge : NSObject <RCTBridgeModule>

- (void) changeToNativeView;

@end
