//
//  ChangeViewBridge.m
//  RNBridgeDemoApp
//
//  Created by Reetesh Kumar on 5/6/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "ChangeViewBridge.h"
#import "AppDelegate.h"

@implementation ChangeViewBridge

// reference "ChangeViewBridge" module in index.ios.js
RCT_EXPORT_MODULE(ChangeViewBridge);

RCT_EXPORT_METHOD(changeToNativeView) {
  NSLog(@"RN binding - Native View - Loading MyViewController.swift");
  dispatch_async(dispatch_get_main_queue(), ^{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate goToNativeView];
  });
}

RCT_EXPORT_METHOD(changeToRootRNView) {
  NSLog(@"RN binding - Native View - Loading MyViewController.swift");
  dispatch_async(dispatch_get_main_queue(), ^{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate goToRootRNView];
  });
}
  
  RCT_EXPORT_METHOD(changeToNativeView1) {
    NSLog(@"RN binding - Native View - Loading MyViewController.swift");
    dispatch_async(dispatch_get_main_queue(), ^{
      AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
      [appDelegate goToNativeView1];
    });
}

RCT_EXPORT_METHOD(changeToNativeView2) {
  NSLog(@"RN binding - Native View - Loading MyViewController.swift");
  dispatch_async(dispatch_get_main_queue(), ^{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate goToNativeView2];
  });
}

@end
