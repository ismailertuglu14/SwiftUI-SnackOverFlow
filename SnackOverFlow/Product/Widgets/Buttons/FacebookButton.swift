//
//  FacebookButton.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI



struct FacebookButton: View {
    
    var onTap: () -> Void
    
    
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack{
                Image(IconItems.Social.facebook.rawValue)
                Text(StringItems.facebook.rawValue)
                Spacer()
            }.tint(.white)
                .background(Color.deepSkyBlue)
            
            
        }.buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
    }
}

private enum StringItems: String{
    case facebook = "Sign in with Facebook"
}
