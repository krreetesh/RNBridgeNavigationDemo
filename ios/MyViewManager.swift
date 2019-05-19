//
//  MyViewManager.swift
//  RNBridgeDemoApp
//
//  Created by Reetesh Kumar on 5/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

@objc(MyViewManager)
class MyViewManager: NSObject {

//  @objc func showData() {
//    print("Hello World")
//
//  }
  
  @objc func showData(name: String) -> Void {
    print("call : " + name)
  }
}

