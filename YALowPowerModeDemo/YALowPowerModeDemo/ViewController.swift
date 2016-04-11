//
//  ViewController.swift
//  YALowPowerModeDemo
//
//  Created by Yannik Achternbosch on 11.04.16.
//  Copyright © 2016 Yannik Achternbosch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, YALowPowerModeDelegate {
    
    @IBOutlet weak var powerModeStateLabel: UILabel!
    
    var lowPowerMode: YALowPowerMode = YALowPowerMode()

    override func viewDidLoad() {
        super.viewDidLoad()
        lowPowerMode.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: YALowPowerModeDelegate
    func lowPowerModeChanged() {
        if lowPowerMode.isActivated {
            self.view.backgroundColor = UIColor.yellowColor()
            self.powerModeStateLabel.text = "Disabled"
        }
        else {
            self.view.backgroundColor = UIColor.greenColor()
            self.powerModeStateLabel.text = "Enabled"
        }
    }

}

