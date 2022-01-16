//
//  ProfileCreationViewController.swift
//  DemoProfileCreation
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import UIKit

class ProfileCreationViewController: UIViewController {
    
    @IBOutlet weak var profileCreationLabel: UILabel!
    @IBOutlet weak var formDataInfoTextView: UITextView!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var emailAddressField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var websiteField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func didPressSubmitButton(_ sender: Any) {
        guard let userInfo = getUserData() else{
           return
        }
        let signInVC = SignInViewController(nibName: "SignInViewController", bundle: nil )
        signInVC.setUserInfo(userInfo)
        if let navC = self.navigationController{
            navC.pushViewController(signInVC, animated: true )
            return 
        }
    }
    
    let layerGradient = CAGradientLayer()
    var   gradientLayer = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        websiteField.delegate = self
        firstNameText.delegate = self
        emailAddressField.delegate = self
        websiteField.delegate = self
        self.view.layer.insertSublayer(layerGradient, below: submitButton.layer)
    }
    
    override func viewDidLayoutSubviews() {
        createGradientLayer()
    }
    
    func createGradientLayer() {
        let startColor = CGColor.init(red: 1, green: 0.2, blue: 0, alpha:1)
        let endColor = CGColor.init(red: 1, green: 0.0, blue: 0.3, alpha: 1)
        layerGradient.colors = [startColor,endColor  ]
        layerGradient.startPoint = CGPoint(x: 0, y: 1)
        layerGradient.endPoint = CGPoint(x: 1, y: 1) 
        layerGradient.cornerRadius = submitButton.bounds.height/4
        layerGradient.frame = submitButton.frame 
    }
}

extension ProfileCreationViewController{
    
    fileprivate  func validateData(_ userInfo: UserInfo)->Bool {
        if(userInfo.name.count == 0 ){
            let title = NSLocalizedString("Empty Name", comment: "Emtpy Data")
            let message = NSLocalizedString("Name cannot be empty, please enter name.", comment: "Error")
            Utility.showAlertMessage(message, withTitle: title , self ) {
                print("empty data error ")
            }
            return false
        }
        if(userInfo.email.count == 0 ){
            let title = NSLocalizedString("Empty email", comment: "Emtpy Data")
            let message = NSLocalizedString("Email cannot be empty, please enter email and try again .", comment: "Error")
            Utility.showAlertMessage(message, withTitle: title, self ) {
                print("empty data error ")
            }
            return false
        }
        if(userInfo.pswd.count == 0 ){
            let title = NSLocalizedString("Empty Password", comment: "Emtpy Data")
            let message = NSLocalizedString("Password cannot be empty, please enter Password and try again .", comment: "Error")
            Utility.showAlertMessage(message, withTitle: title, self ) {
                print("empty data error ")
            }
            return false
        }
        if(userInfo.website.count == 0 ){
            let title = NSLocalizedString("Empty Website", comment: "Emtpy Data")
            let message = NSLocalizedString("Website cannot be empty, please enter website and try again .", comment: "Error")
            Utility.showAlertMessage(message, withTitle: title, self ) {
                print("empty data error ")
            }
            return false
        }
        return true
    }
    
    fileprivate func getUserData()->UserInfo? {
        guard let name = firstNameText.text, let email = emailAddressField.text, let website = websiteField.text,let passwd = passwordField.text else{
            let title = NSLocalizedString("Empty Data", comment: "Emtpy Data")
            let message = NSLocalizedString("Data cannot be empty", comment: "Error")
            Utility.showAlertMessage(message, withTitle: title,self ) {
                print("empty data error ")
            }
            return nil
        }
        
        let userInfo = UserInfo(name: name , email:  email  , website: website, pswd: passwd  )
        if(!validateData(userInfo)){
            print("invalid data ")
            return nil
        }
        return userInfo
    }
    
}

extension ProfileCreationViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("return pressed")
        textField.resignFirstResponder()
        return true
    }
    
}
