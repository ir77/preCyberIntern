//
//  resultScene.swift
//  preCyberIntern
//
//  Created by Shogo Kimura on 9/5/26 H.
//  Copyright (c) 26 Heisei ucuc. All rights reserved.
//

import SpriteKit

class resultScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"PixelMplus12-Regular")
        myLabel.text = "result";
        myLabel.fontSize = 48;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(myLabel)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
    }
    
    override func update(currentTime: CFTimeInterval) {
    }
}