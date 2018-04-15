//
//  ViewController.swift
//  facebookLogin
//
//  Created by Ahmed Mukhtar on 2018-04-15.
//  Copyright © 2018 Ahmed Mukhtar. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
class ViewController: UIViewController {

    
    @IBOutlet weak var btn_first: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if(FBSDKAccessToken.current() != nil)
        {
            print("LOGGED IN")
            btn_first.setTitle("login", for: .normal)
        } else {
            print("NOT LOGGED IN")
            btn_first.setTitle("logout", for: .normal)
        }
    
    }


    @IBAction func btn_second(_ sender: Any) {
        
        
        // Logga in
        let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
        
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email", "user_friends"], from: self) { (result, error) -> Void in
            
            if(error != nil)
            {
                print("LOGIN ERROR")
            } else {
                print("LOGIN OK")
            }
    }
}
}
