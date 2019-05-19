//
//  NativeViewController2.swift
//  RNBridgeDemoApp
//
//  Created by Reetesh Kumar on 5/18/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class NativeViewController2: UIViewController {
  
  // Goto Root RN View
  @IBAction func onClickToRoot(sender: AnyObject) {
    if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
      appDelegate.goToReactNative()
    }
  }
  
  // Goto Back RN View
  @IBAction func onClickToBack(sender: AnyObject) {
    if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
      appDelegate.goToPreviousRNView()
    }
  }
}
