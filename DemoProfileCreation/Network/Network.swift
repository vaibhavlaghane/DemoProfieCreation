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

class Network: NetworkProtocol{
    func registerUser(_ user: UserInfo, completion: @escaping (Result<Data, Error>) -> Void) {
        //TODO handle the network call 
    }
    
}
