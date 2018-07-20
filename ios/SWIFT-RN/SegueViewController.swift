//
//  SegueViewController.swift
//  BrigeToReact
//
//  Created by Alex Fedorov on 18.07.2018.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import UIKit
import React

let notificationCenter = NotificationCenter()

class SegueViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        notificationCenter.addObserver(self, selector: #selector(self.notification1), name: NSNotification.Name(rawValue: "notification1"), object: nil)
        notificationCenter.addObserver(self, selector: #selector(self.notification2), name: NSNotification.Name(rawValue: "notification2"), object: nil)
        notificationCenter.addObserver(self, selector: #selector(self.notification3), name: NSNotification.Name(rawValue: "notification3"), object: nil)
    }
    
    
    @objc func notification1 () {
        self.performSegue(withIdentifier: "1", sender: self)
    }

    @objc func notification2 () {
        self.performSegue(withIdentifier: "2", sender: self)
    }
    
    @objc func notification3 () {
        self.performSegue(withIdentifier: "3", sender: self)
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    


    
    // отсюда должен происходить переход в код написанный на ReactNative
    @IBAction func goButtonClick(_ sender: Any) {
        let num = (segment.selectedSegmentIndex + 1).description
        UserDefaults.standard.setValue(num, forKey: "segueForRN")
        UserDefaults.standard.synchronize()
        print ("segueForRN with arg " + num)
        
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        
        let viewController = storyBoard.instantiateViewController(withIdentifier: "rn-screen")
        self.present(viewController, animated: false, completion: nil)
//      segue("1")
//      segueToSwift.gotoScreen(num)
    }

}
