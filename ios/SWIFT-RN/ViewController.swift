//
//  ViewController.swift
//  SWIFT-RN
//
//  Created by Alex Fedorov on 18.07.2018.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: nil,
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



class Caleka: NSObject {
    
    var bridge: RCTBridge!  // this is synthesized
    
    @objc func addEvent(name: String, location: String, date: NSNumber, callback: (NSObject) -> () ) -> Void {
        print("ХУЙ")
    }
    
}
