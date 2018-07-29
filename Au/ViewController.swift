//
//  ViewController.swift
//  Au
//
//  Created by Gameloft on 7/27/18.
//  Copyright © 2018 JAV. All rights reserved.
//

import UIKit

import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func authenticate(){
        let context = LAContext()
        let reason = "We need this to protect your payments." // add your own message explaining why you need this authentication method
        
        var authError: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, error in
                if success {
                   NSLog("User authenticated successfully", 1)
                } else {
                    // User did not authenticate successfully
                    NSLog("User did not authenticate successfully", 1)
                }
            }
        } else {
            // Handle Error
        }
        
    
    }
//    func func1 () {
//        // User authenticated successfully
//      
//        let alertController = UIAlertController(title: "Hello  Coders", message: " successfully", preferredStyle: .Alert)
//        let defaultAction = UIAlertAction(title: "Close", style: .Default, handler: nil)
//        alertController.addAction(defaultAction)
//        
//        presentViewController(alertController, animated: true, completion: nil)
//    }
    @IBAction func btnClick(_ sender: UIButton) {
        NSLog("log  test: %d", 3);
        authenticate();
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

