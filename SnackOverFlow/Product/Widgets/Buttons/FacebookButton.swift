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
                Text(LocaleKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }.tint(.white)
                .font(.title2)
                .padding(PagePadding.All.normal.rawValue)
            
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.deepSkyBlue)
            .cornerRadius(RadiusItems.normalRadius)
            
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: {})
    }
}




