//
//  AppDelegate.swift
//  facebookLogin
//
//  Created by Ahmed Mukhtar on 2018-04-15.
//  Copyright © 2018 Ahmed Mukhtar. All rights reserved.
//

import UIKit
import FBSDKCoreKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
     
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    
    }
    
    func aplicationdidBecameActive(_ application: UIApplication) {
        
        FBSDKAppEvents.activateApp()
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
     
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let fbresult =  FBSDKApplicationDelegate.sharedInstance().application(app, open: url, sourceApplication:
            options [UIApplicationOpenURLOptionsKey.sourceApplication] as! String, annotation:
            options[UIApplicationOpenURLOptionsKey.annotation])
        return fbresult
        
    }
    
}

