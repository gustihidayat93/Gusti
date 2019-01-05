//
//  LoginViewController.swift
//  Gusti
//
//  Created by Gusti Hidayat on 04/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func loginButton(_ sender: Any) {
    }
    @IBOutlet weak var createaccountButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
}
