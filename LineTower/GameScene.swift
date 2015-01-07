//
//  GameScene.swift
//  LineTower
//
//  Created by Patrick Sullivan on 1/6/15.
//  Copyright (c) 2015 SullyGames. All rights reserved.
//

import SpriteKit
import UIKit
class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Line Tower Warz!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.backgroundColor = UIColor(red: 0.239, green: 0.612, blue: 0.141, alpha: 1.0);
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
