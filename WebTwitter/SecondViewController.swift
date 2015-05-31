//
//  SecondViewController.swift
//  WebTwitter
//
//  Created by Gordon Hee on 5/28/15.
//  Copyright (c) 2015 Gordon Hee. All rights reserved.
//

import UIKit
import TwitterKit


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Twitter.sharedInstance().logInGuestWithCompletion { (session: TWTRGuestSession!, error: NSError!) in
            Twitter.sharedInstance().APIClient.loadTweetWithID("20") { (tweet: TWTRTweet!, error: NSError!) in
                self.view.addSubview(TWTRTweetView(tweet: tweet))
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

