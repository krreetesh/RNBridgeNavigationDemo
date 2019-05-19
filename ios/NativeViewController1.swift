//
//  NativeViewController1.swift
//  RNBridgeDemoApp
//
//  Created by Reetesh Kumar on 5/6/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class NativeViewController1: UIViewController {
  
  // Goto Back RN View
  @IBAction func onClickToBack(sender: AnyObject) {
    if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
      appDelegate.goToReactNative()
    }
  }
  
  // Goto Next RN View
  @IBAction func onClickToNext(sender: AnyObject) {
    
    NSLog("Hello")
    let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
    let mockData:NSDictionary = ["scores":
      [
        ["name":"Alex", "value":"42"],
        ["name":"Joel", "value":"10"]
      ]
    ]

    let rootView = RCTRootView(
      bundleURL: jsCodeLocation,
      moduleName: "RNSampleView",
      initialProperties: mockData as [NSObject : AnyObject],
      launchOptions: nil
    )
    let vc = UIViewController()
    vc.view = rootView
    self.present(vc, animated: true, completion: nil)

  }
  
}
