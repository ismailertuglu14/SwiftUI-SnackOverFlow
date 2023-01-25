//
//  NetworkManager.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 25.01.2023.
//

import Foundation
import Alamofire

struct NetworkConfig {
    let baseUrl: String
}

// MARK: -INetworkManager
protocol INetworkManager {
    var config: NetworkConfig { get set }
    func fetch<T : Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async  -> T?
}

extension NetworkManager {
    static let networkManager : INetworkManager = NetworkManager(config:  NetworkConfig(baseUrl: NetworkPath.baseUrlReqres))
}

// MARK: - NetworkManager
class NetworkManager : INetworkManager {
    
    internal var config: NetworkConfig

    init(config: NetworkConfig){
        self.config = config;
    }
    
    func fetch<T : Codable>(path: NetworkPath,method: HTTPMethod, type: T.Type) async  -> T? {
        let dataRequest = AF.request("\(NetworkPath.baseUrlReqres)\(path.rawValue)", method: method)
            .validate()
            .serializingDecodable(T.self)
        let result = try await dataRequest.response
        
      
        guard let value = result.value else{
            
            print("ERROR: \(String(describing: result.error))")
            
            return nil
        }
        
        return value
    }
    
}

enum NetworkPath: String {
    
    static let baseUrlReqres: String = "https://reqres.in"
    
    case users = "/api/users"
    
}
