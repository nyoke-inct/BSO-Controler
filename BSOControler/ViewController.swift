//
//  ViewController.swift
//  BSOControler
//
//  Created by KawayokeYoshikazu on 2016/03/31.
//  Copyright © 2016年 Yoshikazu Kawayoke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
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
    @IBOutlet weak var httpText: UITextField!
    
    let apiBaseUrl = "http://192.168.1.100:3000/bso/"
    let session: NSURLSession = NSURLSession.sharedSession()
    
    @IBAction func RampPushed(sender: Ramp)
    {
        
        var url: NSURL!
        let request: Request = Request()
        
        /*  
         B   0 1 2
         S   3 4
         O   5 6
         H   7
         E   8
         FC  9
         */
        
        var button = ""
        switch sender.tag
        {
        case 0: // B1
            button = "B1"
            break;
        case 1: // B2
            button = "B2"
            break;
        case 2: // B3
            button = "B3"
            break;
        case 3: // S1
            button = "S1"
            break;
        case 4: // S2
            button = "S2"
            break;
        case 5: // O1
            button = "O1"
            break;
        case 6: // O2
            button = "O2"
            break;
        case 7: // H
            button = "H"
            break;
        case 8: // E
            button = "E"
            break;
        case 9: // FC
            button = "FC"
            break;
            
            default:
                break;
        }
        
        var on_off = ""
        if sender.on_off == false{
            on_off = "on"
        }
        else{
            on_off = "off"
        }
        
        url = NSURL(string: apiBaseUrl + button + "-" + on_off)!
        httpText.text = "sending request[ " + url.description + " ]"

        request.get(url, completionHandler: { data, response, error in
        
            NSOperationQueue.mainQueue().addOperationWithBlock({
                if error == nil{
                    if on_off == "on"{
                        sender.on()
                    }
                    else{
                        sender.off()
                    }
                    self.statusText.text = response?.description
                    self.httpText.text = "sending request[ " + url.description + " ] done."
                }
                else{
                    self.statusText.text = error?.description
                }

            })
        })
    }
    
    
    @IBAction func ACPushed(sender: AnyObject) {
        var url: NSURL!
        let request: Request = Request()
        url = NSURL(string: apiBaseUrl + "ALL-off")!
        httpText.text = "sending request[ " + url.description + " ]"
        
        request.get(url, completionHandler: { data, response, error in
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                if error == nil{
                    self.httpText.text = "sending request[ " + url.description + " ] done."
                    self.statusText.text = response?.description
                    self.B1Button.off()
                    self.B2Button.off()
                    self.B3Button.off()
                    self.O1Button.off()
                    self.O2Button.off()
                    self.S1Button.off()
                    self.S2Button.off()
                    self.HButton.off()
                    self.EButton.off()
                    self.FCButton.off()
                }
                else{
                    self.statusText.text = error?.description
                }
            })

        })

    }
    
    @IBAction func BSCPushed(sender: AnyObject) {
        var url: NSURL!
        let request: Request = Request()
        url = NSURL(string: apiBaseUrl + "SB-off")!
        httpText.text = "sending request[ " + url.description + " ]"
        
        request.get(url, completionHandler: { data, response, error in
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                if error == nil{
                    self.httpText.text = "sending request[ " + url.description + " ] done."
                    self.statusText.text = response?.description
                    self.B1Button.off()
                    self.B2Button.off()
                    self.B3Button.off()
                    self.S1Button.off()
                    self.S2Button.off()
                }
                else{
                    self.statusText.text = error?.description
                }
            })
        })
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

