//
//  SwiftReactNativeBridge.m
//  SWIFT-RN
//
//  Created by bidon on 7/19/18.
//  Copyright © 2018 Alex Fedorov. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(RNCallSwift, NSObject)

//// Type 1: Calling a Swift function from JavaScript
RCT_EXTERN_METHOD(getKey:(NSString *)key
    resolve:(RCTPromiseResolveBlock)resolve
    reject:(RCTPromiseRejectBlock)reject
)

@end

//@interface RCT_EXTERN_MODULE(SegueViewController, UIViewController)
//
//RCT_EXTERN_METHOD(backButton:())
//
//@end

// Type 2: Calling a Swift function with a callback
//@interface RCT_EXTERN_MODULE(NativeModuleJavaScriptCallback, NSObject)

//RCT_EXTERN_METHOD(toggleSwiftButtonEnabled:(RCTResponseSenderBlock *)callback)

//@end



// Type 3: Broadcasting data from Swift and listening in JavaScript
//@interface RCT_EXTERN_MODULE(NativeModuleBroadcastToJavaScript, RCTEventEmitter)
//@end
