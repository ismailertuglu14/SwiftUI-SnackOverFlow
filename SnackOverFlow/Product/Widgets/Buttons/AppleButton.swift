//
//  AppleButton.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct AppleButton: View {
    
    var onTap: () -> Void
    
    
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack{
                Image(IconItems.Social.apple.rawValue)
                Text(LocaleKeys.Auth.apple.rawValue.locale())
                Spacer()
            }.tint(.white)
                .font(.title2)
                .padding(PagePadding.All.normal.rawValue)
            
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.black)
            .cornerRadius(RadiusItems.normalRadius)
            
    }
}
