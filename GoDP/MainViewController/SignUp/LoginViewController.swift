//
//  LoginViewController.swift
//  GoDP
//
//  Created by Phat Tran on 9/21/20.
//  Copyright © 2020 Phat Tran. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var superview: UIView!
    @IBOutlet weak var emailSuperView: UIView!
    @IBOutlet weak var passwordSuperview: UIView!
    @IBOutlet weak var facebookSuperview: UIView!
    @IBOutlet weak var loginSuperview: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func register() {
        let registerVC = RegisterViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        changeSuperview()
    }
}

extension LoginViewController {
    func changeSuperview() {
        let arrView: [UIView] = [superview, emailSuperView, passwordSuperview, facebookSuperview, loginSuperview]
        for view in arrView {
            if view == superview {
                self.superview.layer.cornerRadius = 30
                self.superview.backgroundColor = UIColor(red: 136/255.0, green: 187/255.0, blue: 156/255.0, alpha: 0.5)
                
            }
            if view == emailSuperView {
                self.emailSuperView.layer.cornerRadius = 30
                self.emailSuperView.backgroundColor = UIColor.white
                self.emailSuperView.alpha = 0.5
            }
            if view == passwordSuperview {
                self.passwordSuperview.layer.cornerRadius = 30
                self.passwordSuperview.backgroundColor = UIColor.white
                self.passwordSuperview.alpha = 0.5
            }
            if view == facebookSuperview {
                self.facebookSuperview.layer.cornerRadius = 30
                self.emailSuperView.backgroundColor = UIColor.white
            }
            if view == loginSuperview {
                self.loginSuperview.layer.cornerRadius = 30
            }
        }
    }
}
