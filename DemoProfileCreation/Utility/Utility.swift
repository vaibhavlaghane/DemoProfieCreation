//
//  Utility.swift
//  DemoProfileCreation
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import Foundation
import UIKit

class Utility: NSObject {
    
    /// ALert message dislay
    ///
    /// - Parameters:
    ///   - message: message string
    ///   - title: Title of message
    ///   - completion: completion block
    class func showAlertMessage(_ message: String, withTitle title: String, _ viewController: UIViewController? ,  onClick completion: @escaping () -> Void) {
        DispatchQueue.main.async {
                 
            let alert = UIAlertController(title: " \(title)", message: message, preferredStyle: .alert)
            //Add Buttons
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: {(_ action: UIAlertAction) -> Void in
                //Handle button action here
                completion()
            })
            alert.addAction(okButton)
            if let vc = viewController{
                vc.present(alert, animated: true , completion: nil )
                return 
            }
            var rootViewController = UIApplication.shared.windows.first?.rootViewController
            if let navigationController = rootViewController as? UINavigationController {
                rootViewController = navigationController.viewControllers.first
            }
            if let tabBarController = rootViewController as? UITabBarController {
                rootViewController = tabBarController.selectedViewController
            }
            rootViewController?.present(alert, animated: true, completion: nil)
            }
    }
    

    
}
