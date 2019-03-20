//
//  PlaygroundPage3ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit
import SpriteKit

public class PlaygroundPage3ViewController: UIViewController {

    var cameraNode: SKCameraNode!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view = SKView(frame: self.view.frame)
        if let Scene = SKScene(fileNamed: "MyScene"),let view = self.view as? SKView {
            view.presentScene(Scene)
            cameraNode = SKCameraNode()
            cameraNode.setScale(1.7)
            Scene.camera = cameraNode
  
        }
    }
    
    
}


        



   
    

