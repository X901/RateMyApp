//
//  RateMyAppLogic.swift
//  Al Fareed Dic
//
//  Created by X901 on 23/01/2018.
//  Copyright © 2018 Basil Baragabah. All rights reserved.
//

import UIKit
import StoreKit

class RateMyApp {
    
    private init() {}
    static let shared = RateMyApp()
    
// UserDefauls dictionary key where we store number of runs
  private let runIncrementerSetting = "numberOfRuns"
    
    
// counter for number of runs for the app. You can call this from AppDelegate
  func incrementAppRuns() {
    
    let usD = UserDefaults()
    let runs = getRunCounts() + 1
    usD.setValuesForKeys([runIncrementerSetting: runs])
    usD.synchronize()
    
}

  private func getRunCounts () -> Int {               // Reads number of runs from UserDefaults and returns it.
    
    let usD = UserDefaults()
    let savedRuns = usD.value(forKey: runIncrementerSetting)
    
    var runs = 0
    if (savedRuns != nil) {
        
        runs = savedRuns as! Int
    }
    
    print("Run Counts are \(runs)")
    return runs
    
}

    // Minimum number of runs that we should have until we ask for review

     func showReview(minimumRunCount:Int) {
    
    let runs = getRunCounts()
    print("Show Review")
    
    if (runs > minimumRunCount) {
        
        if #available(iOS 10.3, *) {
            print("Review Requested")
            SKStoreReviewController.requestReview()
            
        } else {
            // Fallback on earlier versions
        }
        
    } else {
        
        print("Runs are not enough to request review!")
        
    }
    
}
}
