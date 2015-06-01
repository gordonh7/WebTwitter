//
//  TwitterTimelineViewController.swift
//  WebTwitter
//
//  Created by Gordon Hee on 5/31/15.
//  Copyright (c) 2015 Gordon Hee. All rights reserved.
//

import Foundation

import UIKit
import TwitterKit

class TwitterTimelineViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Twitter.sharedInstance().logInGuestWithCompletion { session, error in
            if let validSession = session {
                let client = Twitter.sharedInstance().APIClient
                self.dataSource = TWTRUserTimelineDataSource(screenName: "fabric", APIClient: client)
            } else {
                println("error: " + error.localizedDescription)
            }
        }
    }
}
