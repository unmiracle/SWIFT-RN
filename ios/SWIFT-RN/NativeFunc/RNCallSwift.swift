//
//  RNCallSwift.swift
//  SWIFT-RN
//
//  Created by bidon on 7/19/18.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

import Foundation
import UIKit
import React

@objc(RNCallSwift)
class RNCallSwift : NSObject {
    var navController:UINavigationController!
    
    @objc(getKey:resolve:reject:) func getKey(_ key: String, resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) -> Void {
        let value:String = UserDefaults.standard.string(forKey: key)!
        resolve(value)
    }    
}
