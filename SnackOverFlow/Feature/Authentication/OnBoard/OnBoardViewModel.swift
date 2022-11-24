//
//  OnBoardViewModel.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 24.11.2022.
//

import Foundation


final class OnBoardViewModel: ObservableObject {
    @Published var currentIndex: Int = 0
    @Published var isHomeRedirect: Bool = false
    
    private let cache = UserDefaultCache()
    
    private func isUserFirstLogin() -> Bool {
       return cache.read(key: .onboard).isEmpty
    }
     
    func checkUserFirstTime(){
        guard !isUserFirstLogin() else {
            redirectToHome()
            return
        }
        updateCacheFirstLogin()
    }
    
    private func updateCacheFirstLogin(){
        cache.save(key: .onboard,value: UserCacheKeys.saveOnboard)
    }
    
    func saveUserLoginAndRedirect() {
        updateCacheFirstLogin()
        redirectToHome()
    }
    
    private func redirectToHome(){
        isHomeRedirect = true
    }
    
}
