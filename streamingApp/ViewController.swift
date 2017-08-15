//
//  ViewController.swift
//  streamingApp
//
//  Created by Developer on 15/08/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    
    @IBAction private func action(){
        
       // let urlString = "http://85.25.93.221:8008/download/130104/1vefp4o/960ae1b66ad543b?domain=upload.mobi"
        
        
       let urlString = "http://avikam.com/wp-content/uploads/2016/09/SpeechRecognitionTutorial.mp4"
        
        guard let url = URL(string: urlString) else {
            print("Failed")
            return
        }
        
        let player = AVPlayer(url: url)
        
        //MARK:- Play in specfic view
        
     /*   let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 300)
        
        self.view.layer.addSublayer(playerLayer)
        
        player.play() */
        
        
       let controller = AVPlayerViewController()
        
        controller.player = player
        
        print(controller.player)
        
         present(controller, animated: true, completion: {
            Void in
            controller.player?.play()
        })
        
   
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

