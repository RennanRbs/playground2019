//
//  MyScene.swift
//  LiveViewTestApp
//
//  Created by Rennan Rebouças on 20/03/19.
//

import SpriteKit


class MyScene: SKScene {
    
    var pesquisas: [SKSpriteNode] = []
    var spriteMovimento : SKSpriteNode?
    
    override func didMove(to view: SKView) {
        if let testepesquisa = childNode(withName: "//pesquisa01") as? SKSpriteNode {
            pesquisas.append(testepesquisa)
        }
        if let testepesquisa = childNode(withName: "//pesquisa02") as? SKSpriteNode {
            pesquisas.append(testepesquisa)
        }
        if let testepesquisa = childNode(withName: "//pesquisa03") as? SKSpriteNode {
            pesquisas.append(testepesquisa)
        }
        if let testepesquisa = childNode(withName: "//pesquisa04") as? SKSpriteNode {
            pesquisas.append(testepesquisa)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let position = touches.first?.location(in: self) {
            pesquisas.forEach { (pesquisa) in
                if pesquisa.frame.contains(position){
                    spriteMovimento = pesquisa
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let sprite = spriteMovimento, let position = touches.first?.location(in: self){
            sprite.position = position
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        spriteMovimento = nil
    }
    
}


