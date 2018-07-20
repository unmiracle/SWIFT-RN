
//
//  Segue Class.swift
//  SWIFT-RN
//
//  Created by Alex Fedorov on 18.07.2018.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import Foundation

class Segue {

    // сюда должно переходить управление из ReactNative части
    // функция осуществляющая переход на экран, номер которого передается в ее аргументе
    // (строки "1", "2", "3")
    func gotoScreen(_ str: String) {
        switch str {
            case "1":
                let notification = Notification.init(name: Notification.Name("notification1"))
                notificationCenter.post(notification)
       
            case "2":
                let notification = Notification.init(name: Notification.Name("notification2"))
                notificationCenter.post(notification)

            case "3":
                let notification = Notification.init(name: Notification.Name("notification3"))
                notificationCenter.post(notification)

            default:
                print ("unknown argument")
        }
        
        
    }
    
}

let segueToSwift = Segue()




func segue(_ str: String) {
    switch str {
        case "1":
            let notification = Notification.init(name: Notification.Name("notification1"))
            notificationCenter.post(notification)
        
        case "2":
            let notification = Notification.init(name: Notification.Name("notification2"))
            notificationCenter.post(notification)
        
        case "3":
            let notification = Notification.init(name: Notification.Name("notification3"))
            notificationCenter.post(notification)
        
        default:
            print ("unknown argument")
    }
    
}

