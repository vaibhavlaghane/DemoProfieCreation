//
//  SignInSuccessViewController.swift
//  DemoProfileCreation
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import UIKit

///Sign In Success ViewController - shows animation effect
class SignInSuccessViewController: UIViewController {
    private let emitter = CAEmitterLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        addConfetti(to: self.view.layer)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let title = NSLocalizedString("Success", comment: "Success")
        let message = NSLocalizedString("Congratulations, your account is now registered", comment: "Message" )
        let _ = Utility.showAlertMessage(message, withTitle: title, self ) {
                print("sign in Successful ")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        emitter.removeFromSuperlayer()
    }
}

extension SignInSuccessViewController{
    /// Add confetti for animation effect
    /// - Parameter layer: the layer to add the animation effect to 
    fileprivate func addConfetti(to layer: CALayer) {
      let images: [UIImage] = (0...5).map { UIImage(named: "confetti\($0)")! }
      let colors: [UIColor] = [.systemGreen, .systemRed, .systemBlue, .systemPink, .systemOrange, .systemPurple, .systemYellow]
      let cells: [CAEmitterCell] = (0...16).map { i in
          let cell = CAEmitterCell()
          cell.contents = images.randomElement()?.cgImage
          cell.birthRate = 3
          cell.lifetime = 12
          cell.lifetimeRange = 0
          cell.velocity = CGFloat.random(in: 100...200)
          cell.velocityRange = 0
          cell.emissionLongitude = 0
          cell.emissionRange = 0.8
          cell.spin = 4
          cell.color = colors.randomElement()?.cgColor
          cell.scale = CGFloat.random(in: 0.2...0.8)
          return cell
      }
        
      emitter.emitterPosition = CGPoint(x: layer.frame.size.width / 2, y: layer.frame.size.height + 5)
      emitter.emitterShape = .line
      emitter.emitterSize = CGSize(width: layer.frame.size.width, height: 2)
      emitter.emitterCells = cells
      
      layer.addSublayer(emitter)
    }
}
