//
//  WriteViewController.swift
//  BrigeToReact
//
//  Created by Alex Fedorov on 18.07.2018.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func writeButtonClick(_ sender: Any) {
        if let str = textField.text {
            UserDefaults.standard.setValue(str, forKey: "segue")
            UserDefaults.standard.synchronize()
            print ("write " + str)
        } 
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
