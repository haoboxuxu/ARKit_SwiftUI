//
//  ARView.swift
//  ARKit_SwiftUI
//
//  Created by 徐浩博 on 2020/4/5.
//  Copyright © 2020 徐浩博. All rights reserved.
//

import SwiftUI
import UIKit
import SceneKit
import ARKit

struct ARView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<ARView>) -> ARViewController {
        return ARViewController()
    }
    
    func updateUIViewController(_ uiViewController: ARViewController, context: UIViewControllerRepresentableContext<ARView>) {
        
    }
}

class ARViewController: UIViewController, ARSCNViewDelegate {
    override func loadView() {
        super.loadView()
        view = ARSCNView()
    }
    var sceneView: ARSCNView! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = ARScene().newarScene()
        
        // Present the scene
        sceneView = self.view as? ARSCNView
        sceneView.delegate = self
        sceneView.scene = scene
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
}


class ARScene: SCNScene {
    func newarScene() -> SCNScene {
        let scene = SCNScene(named: "testScn.scn")!
        return scene
    }
}
