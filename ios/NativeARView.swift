//
//  NativeARView.swift
//  ARKitReactNative
//
//  Created by Sahan Walpita on 2023-07-20.
//

import Foundation
import ARKit

final class NativeARView: ARSCNView {
  
  override init(frame: CGRect) {
    super.init(frame: frame, options: [:])
    let sceneDelegate = NativeARViewDelegate()
    self.delegate = sceneDelegate
    
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupView() {
    guard let scene = SCNScene(named: "ship.scnassets/ship.scn") else { return }
    self.scene = scene
    
    let configuration = ARWorldTrackingConfiguration()
    self.session.run(configuration)
  }
}
