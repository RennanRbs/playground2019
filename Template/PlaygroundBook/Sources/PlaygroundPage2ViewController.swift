//
//  PlaygroundPage2ViewController.swift
//  LiveViewTestApp
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage2ViewController: UIViewController {

    lazy var quarto: UIImageView = {
        let imageName = "quarto"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var lampada: UIImageView = {
        let imageName = "lampada"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(quarto)
        view.addSubview(lampada)
        animationLamp()

        quarto.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        quarto.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        quarto.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        quarto.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        lampada.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 68).isActive = true
        lampada.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 160).isActive = true
        
    }
    
    func animationLamp()  {
        UIView.animate(withDuration: 1, animations: {
            
        }) { _ in
            UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {
                self.lampada.frame.origin.y -= 30
                
                
            })
        }
    }
 

}
