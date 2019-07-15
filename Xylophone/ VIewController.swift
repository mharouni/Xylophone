//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController, AVAudioPlayerDelegate{
    var audioPlayer = AVAudioPlayer()
	let array: [Int] = [1,2,3,4,5,6]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        //print(sender.tag)
		let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
		do{
			try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
			
		}
		catch{
			print(error)
		}
        audioPlayer.play()
    }
    
  

}

