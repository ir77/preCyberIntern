//
//  GameScene.swift
//  preCyberIntern
//
//  Created by ucuc on 9/4/14.
//  Copyright (c) 2014 ucuc. All rights reserved.
//

import SpriteKit

class roomScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"PixelMplus12-Regular")
        myLabel.text = "roomScene";
        myLabel.fontSize = 48;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(myLabel)
        
        // 「Start」を表示。
        let startLabel = SKLabelNode(fontNamed: "Copperplate")
        startLabel.text = "result"
        startLabel.fontSize = 36
        startLabel.position = CGPoint(x: CGRectGetMidX(self.frame), y: 200)
        startLabel.name = "result"
        self.addChild(startLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        let touch: AnyObject! = touches.anyObject()
        let location = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(location)
        
        if touchedNode.name != nil{
            if touchedNode.name == "result" {
                let newScene = resultScene(size: self.size)
                newScene.scaleMode = SKSceneScaleMode.AspectFill
                self.view?.presentScene(newScene)
            }
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
    }
}