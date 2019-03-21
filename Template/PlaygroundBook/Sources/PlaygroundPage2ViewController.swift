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
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(quarto)

        quarto.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        quarto.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        quarto.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        quarto.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
 

}
