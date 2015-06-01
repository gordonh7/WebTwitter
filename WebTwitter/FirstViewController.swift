//
//  FirstViewController.swift
//  WebTwitter
//
//  Created by Gordon Hee on 5/28/15.
//  Copyright (c) 2015 Gordon Hee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let url = NSURL (string: "http://uwajimaya.com");
        let requestObj = NSURLRequest(URL: url!);
        firstWebView.loadRequest(requestObj);
        self.view.addSubview(firstWebView);
        */
    }
    
    override func viewWillAppear(animated: Bool) {
        // Returns to home page everytime user switches away and back to this tab
        let url = NSURL (string: "http://uwajimaya.com");
        let requestObj = NSURLRequest(URL: url!);
        firstWebView.loadRequest(requestObj);
        self.view.addSubview(firstWebView);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



     