//
//  ViewController.swift
//  BSOControler
//
//  Created by KawayokeYoshikazu on 2016/03/31.
//  Copyright © 2016年 Yoshikazu Kawayoke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var b1: Bool = false
    
    @IBOutlet weak var B1Button: Ramp!
    @IBOutlet weak var B2Button: Ramp!
    @IBOutlet weak var B3Button: Ramp!
    @IBOutlet weak var S1Button: Ramp!
    @IBOutlet weak var S2Button: Ramp!
    @IBOutlet weak var O1Button: Ramp!
    @IBOutlet weak var O2Button: Ramp!
    @IBOutlet weak var HButton: Ramp!
    @IBOutlet weak var EButton: Ramp!
    @IBOutlet weak var FCButton: Ramp!
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var BSCButton: UIButton!
    @IBOutlet weak var statusText: UITextField!
    
    @IBAction func B1Pushed(sender: AnyObject) {
        if b1 == false{
            B1Button.backgroundColor = UIColor.greenColor()
            b1 = true
        }
        else{
            B1Button.backgroundColor = UIColor.blackColor()
            b1 = false
        }
        
        statusText.text = sender.description
    }
    
    @IBAction func B2Pushed(sender: AnyObject) {
    }
    
    @IBAction func B3Pushed(sender: AnyObject) {
    }
    
    @IBAction func S1Pushed(sender: AnyObject) {
    }
    
    @IBAction func S2Pushed(sender: AnyObject) {
    }
    
    @IBAction func O1Pushed(sender: AnyObject) {
    }
    
    @IBAction func O2Pushed(sender: AnyObject) {
    }
    
    @IBAction func HPushed(sender: AnyObject) {
    }
    
    @IBAction func EPushed(sender: AnyObject) {
    }
    
    @IBAction func FCPushed(sender: AnyObject) {
    }
    
    @IBAction func ACPushed(sender: AnyObject) {
        statusText.text = sender.description
    }
    
    @IBAction func BSCPushed(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

