//
//  PlaygroundPage6ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage6ViewController: UIViewController {

   
    
    
    lazy var imageColorsImage: UIImageView = {
        let imageName = "oceanoLimpo"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeAzul: UIImageView = {
        let imageName = "peixe2"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeAmarelo: UIImageView = {
        let imageName = "peixe3"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeLaranja: UIImageView = {
        let imageName = "peixe1"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var peixeAzulClaro: UIImageView = {
        let imageName = "peixe4"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        imageT.layer.cornerRadius = 1
        imageT.layer.masksToBounds = true
        return imageT
    }()
    lazy var polvo: UIImageView = {
        let imageName = "polvo"
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
        view.addSubview(polvo)
        
        
        setupImage()
        DispatchQueue.main.async {
            self.animationPeixes()
        }
        
    }
    
    func animationPeixes()  {
        UIView.animate(withDuration: 1, animations: {
            
        }) { _ in
            UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {
                self.peixeAzul.frame.origin.y -= 25
                self.peixeAzulClaro.frame.origin.x -= 20
                self.peixeLaranja.frame.origin.y += 30
                self.peixeAmarelo.frame.origin.x += 35
                self.polvo.frame.origin.y += 35


                
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
        polvo.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30).isActive = true
        polvo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -140).isActive = true
 
        
        peixeLaranja.heightAnchor.constraint(equalToConstant: 80).isActive = true
        peixeLaranja.widthAnchor.constraint(equalToConstant: 80).isActive = true
        peixeAzul.heightAnchor.constraint(equalToConstant: 80).isActive = true
        peixeAzul.widthAnchor.constraint(equalToConstant: 80).isActive = true
        peixeAmarelo.heightAnchor.constraint(equalToConstant: 80).isActive = true
        peixeAmarelo.widthAnchor.constraint(equalToConstant: 80).isActive = true
        peixeAzulClaro.heightAnchor.constraint(equalToConstant: 120).isActive = true
        peixeAzulClaro.widthAnchor.constraint(equalToConstant: 80).isActive = true
        polvo.heightAnchor.constraint(equalToConstant: 80).isActive = true
        polvo.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    
    

}
