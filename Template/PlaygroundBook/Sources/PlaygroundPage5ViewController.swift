//
//  PlaygroundPage5ViewController.swift
//  Book_Sources
//
//  Created by Rennan Rebouças on 19/03/19.
//
import PlaygroundSupport
import UIKit

public class PlaygroundPage5ViewController: UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer  {
    
    lazy var imagemPrancheta: UIImageView = {
        let imageName = "prancheta"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagemMark1: UIImageView = {
        let imageName = "mark"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagemMark2: UIImageView = {
        let imageName = "mark"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagemMark3: UIImageView = {
        let imageName = "mark"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagemMark4: UIImageView = {
        let imageName = "mark"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagemMarkX1: UIImageView = {
        let imageName = "markX"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var imagemMarkX2: UIImageView = {
        let imageName = "markX"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()

    lazy var imagemMarkX3: UIImageView = {
        let imageName = "markX"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()

    lazy var imagemMarkX4: UIImageView = {
        let imageName = "markX"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()
    lazy var aproved: UIImageView = {
        let imageName = "aproved"
        let image = UIImage(named: imageName)
        let imageT = UIImageView(image: image!)
        imageT.isUserInteractionEnabled = true
        imageT.translatesAutoresizingMaskIntoConstraints = false
        return imageT
    }()


    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imagemPrancheta)
        //makeTest()
        constranits()
    }
    
    func makeTest()  {
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture1))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture2))
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture3))
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture4))
        
        view.addSubview(imagemMark1)
        imagemMark1.addGestureRecognizer(tapGestureRecognizer1)
        view.addSubview(imagemMark2)
        imagemMark2.addGestureRecognizer(tapGestureRecognizer2)
        view.addSubview(imagemMark3)
        imagemMark3.addGestureRecognizer(tapGestureRecognizer3)
        view.addSubview(imagemMark4)
        imagemMark4.addGestureRecognizer(tapGestureRecognizer4)
        
        imagemMark1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40).isActive = true
        imagemMark1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -118).isActive = true
        imagemMark2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -35).isActive = true
        imagemMark2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -118).isActive = true
        imagemMark3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
        imagemMark3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -118).isActive = true
        imagemMark4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -185).isActive = true
        imagemMark4.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -118).isActive = true
    }
    
    @objc func handleTapGesture1(sender:UITapGestureRecognizer){
        imagemMark1.addSubview(imagemMarkX1)
        imagemMarkX1.centerXAnchor.constraint(equalTo: imagemMark1.centerXAnchor).isActive = true
        imagemMarkX1.centerYAnchor.constraint(equalTo: imagemMark1.centerYAnchor, constant: -10).isActive = true
        self.imagemPrancheta.addSubview(aproved)
        aproved.centerYAnchor.constraint(equalTo: imagemPrancheta.centerYAnchor).isActive = true
        aproved.centerXAnchor.constraint(equalTo: imagemPrancheta.centerXAnchor).isActive = true
    }
    @objc func handleTapGesture2(sender:UITapGestureRecognizer){
        imagemMark2.addSubview(imagemMarkX2)
        imagemMarkX2.centerXAnchor.constraint(equalTo: imagemMark2.centerXAnchor).isActive = true
        imagemMarkX2.centerYAnchor.constraint(equalTo: imagemMark2.centerYAnchor, constant: -10).isActive = true

        
    }
    @objc func handleTapGesture3(sender:UITapGestureRecognizer){
        imagemMark3.addSubview(imagemMarkX3)
        imagemMarkX3.centerXAnchor.constraint(equalTo: imagemMark3.centerXAnchor).isActive = true
        imagemMarkX3.centerYAnchor.constraint(equalTo: imagemMark3.centerYAnchor, constant: -10).isActive = true
        
    }
    @objc func handleTapGesture4(sender:UITapGestureRecognizer){
        imagemMark4.addSubview(imagemMarkX4)
        imagemMarkX4.centerXAnchor.constraint(equalTo: imagemMark4.centerXAnchor).isActive = true
        imagemMarkX4.centerYAnchor.constraint(equalTo: imagemMark4.centerYAnchor, constant: -10).isActive = true
        
        
    }
    
    func constranits()  {
        imagemPrancheta.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150).isActive = true
        imagemPrancheta.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imagemPrancheta.widthAnchor.constraint(equalToConstant: 859).isActive = true
        imagemPrancheta.heightAnchor.constraint(equalToConstant: 919).isActive = true
        
        
        
    }
    
    
    
    public func receive(_ message: PlaygroundValue) {
        switch message {
            
        case .string(let value) :
            if value == "test"{
            makeTest()
            }
            break
            
        default:
            print("Oh, my bad!")
            
        }
    }

    

}
