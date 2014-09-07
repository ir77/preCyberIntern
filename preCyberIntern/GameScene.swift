//
//  GameScene.swift
//  preCyberIntern
//
//  Created by ucuc on 9/4/14.
//  Copyright (c) 2014 ucuc. All rights reserved.
//

import SpriteKit
import UIKit

class GameScene: SKScene, UITextFieldDelegate, UIAlertViewDelegate {
    var _playButton:SKSpriteNode = SKSpriteNode(imageNamed: "play.png")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        let myLabel = SKLabelNode(fontNamed:"PixelMplus12-Regular")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 65
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
        self.backgroundColor = UIColor.blueColor()
        
        _playButton.position = CGPoint(x: 500, y: 250)
        _playButton.setScale(1.0)
        self.addChild(_playButton)
    
        //ポップアップを作成
        let alert = UIAlertView()
        alert.title = "あなたの名前は？"
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alert.message = ""
        alert.addButtonWithTitle("けってい")
        alert.show()
        alert.delegate = self
        
        //ポップアップに入力フォームを追加
        let textField = alert.textFieldAtIndex(0)
        textField?.placeholder = "名前を入力"
        textField?.delegate = self

    }
    
    //キーボードのReturnキーで入力確定
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        println(textField?.text )
        return true
    }
    
    //AlertViewのけっていキーで入力確定
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int){
        if buttonIndex == 0{
            let textField = alertView.textFieldAtIndex(0)
            println(textField?.text)
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            // tapping tha play button plays the game update loop
            if CGRectContainsPoint(_playButton.frame, touch.locationInNode(self)) {
                //playButtonPressed()
                NSLog("pushed!")
            } else {

                let location = touch.locationInNode(self)
                
                let sprite = SKSpriteNode(imageNamed:"char_fatboy.png")
                
                sprite.xScale = 1.5
                sprite.yScale = 1.5
                sprite.position = location
                
                let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
                
                sprite.runAction(SKAction.repeatActionForever(action))
                
                self.addChild(sprite)
            }
        }
    }
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
