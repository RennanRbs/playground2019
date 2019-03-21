//
//  PlaygroundPage4ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage4ViewController: UIViewController {

    lazy var areaDeTrabalho: UIImageView = {
        let imageName = "areaDeTrabalho"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    lazy var image1: UIImageView = {
        let imageName = "xcode1"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    lazy var image2: UIImageView = {
        let imageName = "xcode2"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var image3: UIImageView = {
        let imageName = "xcode3"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var image4: UIImageView = {
        let imageName = "xcode4"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var image5: UIImageView = {
        let imageName = "xcode5"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture1))
        areaDeTrabalho.addGestureRecognizer(tapGestureRecognizer1)
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture2))
        image1.addGestureRecognizer(tapGestureRecognizer2)
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture3))
        image2.addGestureRecognizer(tapGestureRecognizer3)
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture4))
        image3.addGestureRecognizer(tapGestureRecognizer4)
        let tapGestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture5))
        image4.addGestureRecognizer(tapGestureRecognizer5)
        
        
        
        view.addSubview(areaDeTrabalho)
        
        areaDeTrabalho.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        areaDeTrabalho.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        areaDeTrabalho.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        areaDeTrabalho.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    
    @objc func handleTapGesture1(sender:UITapGestureRecognizer){
        areaDeTrabalho.addSubview(image1)
        
        image1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        image1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        image1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
        
        
    }
    @objc func handleTapGesture2(sender:UITapGestureRecognizer){
        image1.addSubview(image2)
        image2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        image2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        image2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
    }
    @objc func handleTapGesture3(sender:UITapGestureRecognizer){
        image2.addSubview(image3)
        image3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        image3.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        image3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image3.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
    }
    @objc func handleTapGesture4(sender:UITapGestureRecognizer){
        image3.addSubview(image4)
        image4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        image4.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        image4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image4.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
    }
    @objc func handleTapGesture5(sender:UITapGestureRecognizer){
        image4.addSubview(image5)
        image5.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.3).isActive = true
        image5.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1.1).isActive = true
        image5.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image5.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
    }
    

}
