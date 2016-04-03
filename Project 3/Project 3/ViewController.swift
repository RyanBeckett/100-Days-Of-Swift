//
//  ViewController.swift
//  Project 3
//
//  Created by Ryan Beckett on 03/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import iAd
import UIKit

class ViewController: UIViewController, ADBannerViewDelegate {

    @IBOutlet weak var Banner: ADBannerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        banner.hidden = false
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        banner.hidden = true
    }


}

