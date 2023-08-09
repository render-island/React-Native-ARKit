//
//  NativeARViewManager.swift
//  ARKitReactNative
//
//  Created by Sahan Walpita on 2023-07-20.
//

import Foundation
import ARKit

@objc(NativeARViewManager)
class NativeARViewManager: RCTViewManager {
  private var nativeARView: ARSCNView = NativeARView(frame: .zero)
  
  override func view() -> UIView! {
    return nativeARView
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
}
