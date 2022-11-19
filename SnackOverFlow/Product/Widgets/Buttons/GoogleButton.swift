//
//  GoogleButton.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI



struct GoogleButton: View {
    
    var onTap: () -> Void
    
    
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack{
                Image(IconItems.Social.google.rawValue)
                Text(LocaleKeys.Auth.google.rawValue.locale())
                Spacer()
            }.tint(.black)
                .font(.title2)
                .padding(PagePadding.All.normal.rawValue)
            
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.white)
            .cornerRadius(RadiusItems.normalRadius)
            
    }
}
