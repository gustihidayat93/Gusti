//
//  RegisterViewController.swift
//  Gusti
//
//  Created by Gusti Hidayat on 04/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailRegisterField: UITextField!
    @IBOutlet weak var passwordregisterField: UITextField!
    @IBOutlet weak var confrimPasswordField: UITextField!
    @IBOutlet weak var haveaccountLabel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var registerButton: UIButton!
}
