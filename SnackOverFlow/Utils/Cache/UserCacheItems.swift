//
//  UserCacheItems.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 24.11.2022.
//

import Foundation

enum UserCacheKeys: String{
    case onboard = "onboard"
    
    static let saveOnboard = "save_onboard"
}

protocol UserCacheProtocol{
    func read(key: UserCacheKeys) -> String
    func save(key:UserCacheKeys, value: String)
    func remove(key: UserCacheKeys)
}

struct UserDefaultCache: UserCacheProtocol{}

extension UserCacheProtocol{
    /// Read user Data
    /// - Parameter key: UserCacheKey
    /// - Returns: Cached value or Empty String
    func read(key: UserCacheKeys) -> String {
        guard let value = UserDefaults.standard.value(forKey: key.rawValue)
                as? String else {return ""}
        
        return value
    }
    /// Save User Data
    /// - Parameters:
    ///   - key: UserCacheKey
    ///   - value: String
    func save(key: UserCacheKeys, value: String) {
        UserDefaults.standard.set(key.rawValue, forKey: value)
    }
    
    /// Remove User Data
    /// - Parameter key: UserCacheKey
    func remove(key: UserCacheKeys) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}

