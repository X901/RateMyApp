//
//  ViewController.swift
//  RateApp
//
//  Created by X901 on 21/08/2018.
//  Copyright © 2018 X901. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        //Use this function on ViewController that you want it to display Rate Message
        // select minimumRunCount : After how many times user open the app
        // if you enter 5 that mean the Rate Message will display after 6 time user open the app

RateMyApp.shared.showReview(minimumRunCount: 5)
        
    }

 

}

