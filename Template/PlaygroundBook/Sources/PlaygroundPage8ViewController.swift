//
//  PlaygroundPage8ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage8ViewController: UIViewController {
    lazy var eimagemEu: UIImageView = {
        let imageName = "eu3.jpeg"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.layer.cornerRadius = 200
        imageT.layer.masksToBounds = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.borderWidth = 10
        
        return imageT
    }()
    override public func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(eimagemEu)
        eimagemEu.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        eimagemEu.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        eimagemEu.widthAnchor.constraint(equalToConstant: 400).isActive = true
        eimagemEu.heightAnchor.constraint(equalToConstant: 520).isActive = true
        let imageName = "fundoDoMar"
        let image = UIImage(named: imageName)
        view.backgroundColor = UIColor(patternImage: image!)
        
        
    }
    

  

}
