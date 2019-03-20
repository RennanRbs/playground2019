//
//  PlaygroundPage2ViewController.swift
//  LiveViewTestApp
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage2ViewController: UIViewController {

    lazy var imageColorsImage: UIImageView = {
        let imageName = "fundoMarinho-0"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 10
        imageT.layer.masksToBounds = true
        return imageT
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 

}
