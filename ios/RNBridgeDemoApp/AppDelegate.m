/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                   moduleName:@"RNBridgeDemoApp"
                                            initialProperties:nil];

  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

// this method will be called from the RCTBridge
- (void) goToNativeView {
  NSLog(@"RN binding - Native View - MyViewController.swift - Load From ");
        UIViewController *vc = [UIStoryboard storyboardWithName:@"main" bundle:nil].instantiateInitialViewController;
        //self.window.rootViewController = vc;
  [self.window.rootViewController presentViewController:vc animated:true completion:nil];
}

- (void) goToRootRNView {
  
  [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
  
}

- (void) goToNativeView1 {
  
  UIViewController *yourCurrentViewController = [UIApplication sharedApplication].keyWindow.rootViewController;

  UIViewController *vc = [UIStoryboard storyboardWithName:@"main" bundle:nil].instantiateInitialViewController;

  while (yourCurrentViewController.presentedViewController)
  {
    yourCurrentViewController = yourCurrentViewController.presentedViewController;
  }
  [yourCurrentViewController presentViewController:vc animated:true completion:nil];
  
//  while (yourCurrentViewController.presentedViewController)
//  {
//    yourCurrentViewController = yourCurrentViewController.presentedViewController;
//  }
//  [yourCurrentViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void) goToNativeView2 {
  UIViewController *yourCurrentViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
  
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"main" bundle:nil];
  UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"NativeViewController2"];
  
  while (yourCurrentViewController.presentedViewController)
  {
    yourCurrentViewController = yourCurrentViewController.presentedViewController;
  }
  [yourCurrentViewController presentViewController:vc animated:true completion:nil];
}

- (void) goToReactNative {
  
  [self.window.rootViewController dismissViewControllerAnimated:TRUE completion:nil];
  
}

-(void) goToPreviousRNView {
  
  [self.window.rootViewController.presentedViewController.presentedViewController dismissViewControllerAnimated:YES completion:nil];
  
}

@end
