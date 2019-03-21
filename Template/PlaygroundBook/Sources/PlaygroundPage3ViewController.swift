//
//  PlaygroundPage3ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//

import UIKit


public class PlaygroundPage3ViewController: UIViewController {

    lazy var imageMac: UIImageView = {
        let imageName = "macBranco"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagePesquisa02: UIImageView = {
        let imageName = "pesquisa02"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()

    lazy var imagePesquisa01: UIImageView = {
        let imageName = "pesquisa01"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagePesquisa03: UIImageView = {
        let imageName = "pesquisa03"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagePesquisa04: UIImageView = {
        let imageName = "pesquisa04"
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
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture3))
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture4))
        
        view.addSubview(imageMac)
        view.addSubview(imagePesquisa01)
        imagePesquisa01.addGestureRecognizer(tapGestureRecognizer)
        view.addSubview(imagePesquisa02)
        imagePesquisa02.addGestureRecognizer(tapGestureRecognizer2)
        view.addSubview(imagePesquisa03)
        imagePesquisa03.addGestureRecognizer(tapGestureRecognizer3)
        view.addSubview(imagePesquisa04)
        imagePesquisa04.addGestureRecognizer(tapGestureRecognizer4)

        setupConstraints()



    }
     @objc func handleTapGesture(sender:UITapGestureRecognizer){
        
        UIView.animate(withDuration: 1, animations: {
            self.imagePesquisa01.frame.size.width -= 60
            self.imagePesquisa01.frame.size.height -= 60
            self.imagePesquisa01.frame.origin.x += 100
            self.imagePesquisa01.frame.origin.y += 160
        })
    }
    
    @objc func handleTapGesture2(sender:UITapGestureRecognizer){
        UIView.animate(withDuration: 1, animations: {
            self.imagePesquisa02.frame.size.width -= 90
            self.imagePesquisa02.frame.size.height -= 60
            self.imagePesquisa02.frame.origin.x -= 110
            self.imagePesquisa02.frame.origin.y -= 250
        })
    }
    @objc func handleTapGesture3(sender:UITapGestureRecognizer){
        UIView.animate(withDuration: 1, animations: {
            self.imagePesquisa03.frame.size.width -= 50
            self.imagePesquisa03.frame.size.height -= 20
            self.imagePesquisa03.frame.origin.x -= 160
            self.imagePesquisa03.frame.origin.y += 190
        })
    }
    @objc func handleTapGesture4(sender:UITapGestureRecognizer){
        UIView.animate(withDuration: 1, animations: {
            self.imagePesquisa04.frame.size.width -= 10
            self.imagePesquisa04.frame.size.height -= 10
            self.imagePesquisa04.frame.origin.x += 170
            self.imagePesquisa04.frame.origin.y -= 160
        })
    }

    func setupConstraints()  {
        imageMac.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageMac.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true
        imagePesquisa01.centerYAnchor.constraint(equalTo: imageMac.centerYAnchor, constant: -200).isActive = true
        imagePesquisa01.centerXAnchor.constraint(equalTo: imageMac.centerXAnchor, constant: -150).isActive = true
        imagePesquisa02.centerYAnchor.constraint(equalTo: imageMac.centerYAnchor, constant: 200).isActive = true
        imagePesquisa02.centerXAnchor.constraint(equalTo: imageMac.centerXAnchor, constant: 150).isActive = true
        imagePesquisa03.centerYAnchor.constraint(equalTo: imageMac.centerYAnchor, constant: -200).isActive = true
        imagePesquisa03.centerXAnchor.constraint(equalTo: imageMac.centerXAnchor, constant: 150).isActive = true
        imagePesquisa04.centerYAnchor.constraint(equalTo: imageMac.centerYAnchor, constant: 200).isActive = true
        imagePesquisa04.centerXAnchor.constraint(equalTo: imageMac.centerXAnchor, constant: -150).isActive = true

        imageMac.widthAnchor.constraint(equalToConstant: 350).isActive = true
        imageMac
            .heightAnchor.constraint(equalToConstant: 300).isActive = true
        imagePesquisa01.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imagePesquisa01.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imagePesquisa02.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imagePesquisa02.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imagePesquisa03.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imagePesquisa03.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imagePesquisa04.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imagePesquisa04.widthAnchor.constraint(equalToConstant: 50).isActive = true


    }


}


















