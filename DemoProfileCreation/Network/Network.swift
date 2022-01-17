//
//  Network.swift
//  DemoProfileCreation
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import Foundation

protocol NetworkProtocol {
    func registerUser( _ user: UserInfo, completion: @escaping (Result<Data, Error > )->Void )
}

/// Network class - App can be extended to leverage network functionality to register user 
class Network: NetworkProtocol{
    func registerUser(_ user: UserInfo, completion: @escaping (Result<Data, Error>) -> Void) {
        //TODO handle the network call 
    }
    
}
