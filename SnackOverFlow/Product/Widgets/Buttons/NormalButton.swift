//
//  NormalButton.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

/// It's a normal button for project
/// [onTap] will return user interaction
/// [title] it shows button title
struct NormalButton: View {
    var onTap: () -> Void
    var title: String
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack{
                Spacer()
                Text(title.locale())
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
struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(onTap: {},title: "Sample")
    }
}
