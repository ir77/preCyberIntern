//
//  openingScene.swift
//  preCyberIntern
//
//  Created by Shogo Kimura on 9/5/26 H.
//  Copyright (c) 26 Heisei ucuc. All rights reserved.
//

import SpriteKit


class openingScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"PixelMplus12-Regular")
        myLabel.text = "openingScene";
        myLabel.fontSize = 48;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(myLabel)
        
        // 「Start」を表示。
        let startLabel = SKLabelNode(fontNamed: "Copperplate")
        startLabel.text = "room"
        startLabel.fontSize = 36
        startLabel.position = CGPoint(x: CGRectGetMidX(self.frame), y: 200)
        startLabel.name = "room"
        self.addChild(startLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        let touch: AnyObject! = touches.anyObject()
        let location = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(location)
        
        if touchedNode.name != nil{
            if touchedNode.name == "room" {
                let newScene = roomScene(size: self.size)
                newScene.scaleMode = SKSceneScaleMode.AspectFill
                self.view?.presentScene(newScene)
            }
        }
    }
    override func update(currentTime: CFTimeInterval) {}
    
}
