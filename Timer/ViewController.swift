//
//  ViewController.swift
//  Timer
//
//  Created by Duc Tran on 10/22/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0.0
    var isRunning = false
    
    @IBOutlet weak var playBtnLabel: UIButton!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var pauseBtnLabel: UIButton!
    @IBAction func resetBtn(_ sender: Any) {
    
        timer.invalidate()
        isRunning = false
        counter = 0
        labelView.text = "\(counter)"
        playBtnLabel.isEnabled = true
        pauseBtnLabel.isEnabled = false

    }
    @IBAction func playBtn(_ sender: UIButton) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            playBtnLabel.isEnabled = false
            pauseBtnLabel.isEnabled = true
            isRunning = true
        }
    
    }
    @IBAction func pauseBtn(_ sender: Any) {
        playBtnLabel.isEnabled = true
        pauseBtnLabel.isEnabled = false
        
        timer.invalidate()
        isRunning = false

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        labelView.text = "\(counter)"
        playBtnLabel.isEnabled = true
        pauseBtnLabel.isEnabled = false

    }
    func updateTimer()  {
        counter += 0.1
        labelView.text = String(format: "%.1f", counter)
    }
}


















