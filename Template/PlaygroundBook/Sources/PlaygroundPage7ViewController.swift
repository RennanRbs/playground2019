//
//  PlaygroundPage7ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage7ViewController: UIViewController {
    lazy var girl: UIImageView = {
        let imageName = "girlPower"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var cape: UIImageView = {
        let imageName = "cape"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(cape)
        view.addSubview(girl)
        cape.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10).isActive = true
        cape.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        girl.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        girl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        capeAnimatio()
    }
    
    func capeAnimatio()  {
        UIView.animate(withDuration: 1, animations: {
            
        }) { _ in
            UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {
                self.cape.frame.origin.y -= 10
                
                
                
            })
        }
    }

}
