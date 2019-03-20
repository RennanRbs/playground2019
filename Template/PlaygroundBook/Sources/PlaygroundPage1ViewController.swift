//
//  PlaygroundPage1ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit

public class PlaygroundPage1ViewController: UIViewController {
    
    var oceanImage: [UIImage] = []
    
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
        view.addSubview(imageColorsImage)
        setupImage()
        oceanImage = createImageArray(total: 16, imagePrefix: "fundoMarinho")
        animate(imageView: imageColorsImage, images: oceanImage)
        
       }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        var imageArray: [UIImage] = []
        
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)-\(imageCount)"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        return imageArray
    }
    
    
    func animate(imageView: UIImageView, images: [UIImage])  {
        imageView.animationImages = images
        imageView.animationDuration = 2.0
        imageView.animationRepeatCount = 12
        imageView.startAnimating()
    }
    
    
    
    
    func setupImage()  {
        imageColorsImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageColorsImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageColorsImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageColorsImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
  
   



}
