//
//  PlaygroundPage4ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage4ViewController: UIViewController {

    lazy var imageXcode: UIImageView = {
        let imageName = "xcodeVazio"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    lazy var imageInicio: UIImageView = {
        let imageName = "xcodeInicio"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    lazy var imagesegunda: UIImageView = {
        let imageName = "xcode"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture2))
        view.addSubview(imageXcode)
        imageXcode.addGestureRecognizer(tapGestureRecognizer)
        imageInicio.addGestureRecognizer(tapGestureRecognizer2)
        
        setup()
    }
    
    @objc func handleTapGesture(sender:UITapGestureRecognizer){
        
      imageXcode.addSubview(imageInicio)
        imageInicio.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageInicio.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageInicio.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageInicio.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
    @objc func handleTapGesture2(sender:UITapGestureRecognizer){
        
        imageInicio.addSubview(imagesegunda)
        imagesegunda.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imagesegunda.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imagesegunda.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imagesegunda.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }

    func setup(){
        imageXcode.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageXcode.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageXcode.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageXcode.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}
