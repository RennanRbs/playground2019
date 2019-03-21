//
//  PlaygroundPage1ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage1ViewController: UIViewController {
    
   
    
    lazy var imageColorsImage: UIImageView = {
        let imageName = "fundoDoMar"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeAzul: UIImageView = {
        let imageName = "peixeAzul"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeAmarelo: UIImageView = {
        let imageName = "peixeAmarelo"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeLaranja: UIImageView = {
        let imageName = "peixeLaranja"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeAzulClaro: UIImageView = {
        let imageName = "peixeAzulClaro"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var saco01: UIImageView = {
        let imageName = "saco1"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var saco02: UIImageView = {
        let imageName = "saco2"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var garrafa: UIImageView = {
        let imageName = "garrafa"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageColorsImage)
        view.addSubview(peixeAzul)
        view.addSubview(peixeAzulClaro)
        view.addSubview(peixeAmarelo)
        view.addSubview(peixeLaranja)
        view.addSubview(saco01)
        view.addSubview(saco02)
        view.addSubview(garrafa)

        setupImage()
        DispatchQueue.main.async {
            self.animationPeixes()
        }
        
    }
    
    func animationPeixes()  {
        UIView.animate(withDuration: 1, animations: {
            
        }) { _ in
            UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {
                self.peixeAzul.frame.origin.y -= 30
                self.peixeAzulClaro.frame.origin.x -= 20
                self.peixeLaranja.frame.origin.y += 40
                self.peixeAmarelo.frame.origin.x += 5
                self.saco02.frame.origin.y += 10
                self.saco01.frame.origin.y += 10
                self.garrafa.frame.origin.y -= 8
                
            })
        }
    }
    
    
    
  
    
    
    
    
    func setupImage()  {
        imageColorsImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageColorsImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageColorsImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageColorsImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        peixeAzul.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30).isActive = true
        peixeAzul.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        peixeAzulClaro.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150).isActive = true
        peixeAzulClaro.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        peixeAmarelo.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -140).isActive = true
        peixeAmarelo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 140).isActive = true
        peixeLaranja.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 180).isActive = true
        peixeLaranja.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -90).isActive = true
        saco02.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -70).isActive = true
        saco02.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 190).isActive = true
        saco01.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
        saco01.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -140).isActive = true
        garrafa.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
        garrafa.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        
    }
    
  
   



}
