//
//  ViewController.swift
//  LoginthroughFacebook
//
//  Created by AALA mac on 02/10/2023.
//

import UIKit
import FBSDKLoginKit
import GoogleSignIn

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
    }
    
    @IBAction func gSignInBtn(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(
            withPresenting: self) { signInResult, error in
              guard let result = signInResult else {
                // Inspect error
                return
              }
              // If sign in succeeded, display the app's main content View.
            }
    }
    
}
