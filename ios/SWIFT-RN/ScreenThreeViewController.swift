//
//  ScreenThreeViewController.swift
//  SWIFT-RN
//
//  Created by Alex Fedorov on 18.07.2018.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import UIKit


class ScreenThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
