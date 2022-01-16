//
//  ViewModel.swift
//  DemoProfileCreation
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import Foundation

protocol ViewModelProtocol {
    var  network: NetworkProtocol { get  }
    func registerUser(_ user: UserInfo)
}

class ViewModel: ViewModelProtocol{
    var  network: NetworkProtocol = Network()
    
    func registerUser(_ user: UserInfo) {
        network.registerUser(user) {  ( result)  in
            switch result{
            case .success(let data):
                //return data to caller 
                print("success - data is , ",  data )
            case .failure(let error ):
                //Add notifiction to user
                print("error occured, error is ", error )
            }
        }
    }
}
