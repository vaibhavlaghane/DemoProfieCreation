//
//  SignInViewController.swift
//  DemoProfileCreation
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import UIKit
import AVFoundation


class SignInViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var infoText: UITextView!
    @IBOutlet weak var website: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    
    @IBAction func didPressSignInButton(_ sender: Any) {
        // Todo - viewModel.registerUser(userInfo)
        //if user registered then show the success view controller
        let successVC = SignInSuccessViewController(nibName: "SignInSuccessViewController", bundle: nil )
        if let navC = self.navigationController{
            navC.pushViewController(successVC, animated: true )
            return
        }
    }

    private var userInfo: UserInfo = UserInfo(name: "", email: "", website: "", pswd: "")
    private let layerGradient = CAGradientLayer()
    private let viewModel : ViewModelProtocol = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.text = userInfo.name
        self.emailLabel.text = userInfo.email
        self.website.text = userInfo.website
        self.view.layer.insertSublayer(layerGradient, below: signInButton.layer)
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
        layerGradient.cornerRadius = signInButton.bounds.height/4
        layerGradient.frame = signInButton.frame 
    }
    
    func setUserInfo(_ userInfoData: UserInfo){
        userInfo = userInfoData
    }
    
}
