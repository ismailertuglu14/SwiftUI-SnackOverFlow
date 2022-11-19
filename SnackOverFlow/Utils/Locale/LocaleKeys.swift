//
//  LocaleKeys.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI


struct LocaleKeys {
    
    enum Auth: String {
        
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case email = "signUpWithEmail"
    }
    enum Buttons: String{
        case getStarted = "getStarted"
    }
}


extension String {
    
    /// It localize any string from Localizable strings
    /// - Returns: Localized value
    func locale()-> LocalizedStringKey{
        return LocalizedStringKey(self)
    }
    
}
