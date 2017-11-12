//
//  ViewController.swift
//  TimeBox
//
//  Created by Johan Wejdenstolpe on 2017-11-08.
//  Copyright © 2017 Johan Wejdenstolpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countdownTimer: Timer?
    var minutes = 0
    
    @IBOutlet weak var btnFirst: UIButton!
    @IBOutlet weak var btnSecond: UIButton!
    @IBOutlet weak var btnThird: UIButton!
    @IBOutlet weak var btnForth: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func firstButton(_ sender: UIButton) {
        startTimer(numberOfMinutes: 5)
    }
    @IBAction func secondButton(_ sender: UIButton) {
        startTimer(numberOfMinutes: 10)
    }
    @IBAction func thirdButton(_ sender: UIButton) {
        startTimer(numberOfMinutes: 15)
    }
    @IBAction func forthButton(_ sender: UIButton) {
        startTimer(numberOfMinutes: 20)
    }
    
    func startTimer(numberOfMinutes: Int) {
        if countdownTimer == nil {
            minutes = numberOfMinutes
            countdownTimer =  Timer.scheduledTimer(
                timeInterval: TimeInterval(60),
                target      : self,
                selector    : #selector(countdown),
                userInfo    : nil,
                repeats     : true)
        }
    }
    
    @objc func countdown(){
        
        if minutes > 0 {
            minutes -= 1
            print(minutes)
        }
        if minutes == 0 {
            print("Time is up")
            stopCountdowntimer()
        }
        
    }
    
    func stopCountdowntimer(){
        if countdownTimer != nil {
            countdownTimer?.invalidate()
            countdownTimer = nil
        }
    }
    
}

