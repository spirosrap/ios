//
//  ViewController.swift
//  headphones
//
//  Created by Spiros Raptis on 24/01/2015.
//  Copyright (c) 2015 Spiros Raptis. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var notification: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkHeadphones(sender: AnyObject) {
        let session:AVAudioSession = AVAudioSession.sharedInstance()
        var route: AVAudioSessionRouteDescription = session.currentRoute
        print(session.currentRoute)
        for desc in route.outputs{
            notification.text = desc.portType
            print(desc.portType)
        }

    }

}

