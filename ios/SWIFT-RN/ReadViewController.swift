//
//  ReadViewController.swift
//  BrigeToReact
//
//  Created by Alex Fedorov on 18.07.2018.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import UIKit

class ReadViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func readButtonClick(_ sender: Any) {
        if let str = UserDefaults.standard.string(forKey: "segue") {
            textLabel.text = str
            print ("readed " + str)
        } else {
            print ("cant read value")
        }
        
    }
   
}
