//
//  EmailButton.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack{
                Spacer()
                Text(LocaleKeys.Auth.email.rawValue.locale())
                Spacer()
            }.tint(.white)
                .font(.system(size:FontSizes.headline,weight: .semibold))
                .padding(PagePadding.All.normal.rawValue)
            
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.peach)
        .cornerRadius(RadiusItems.normalRadius)
        
    }
    
}


 
