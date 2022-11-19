//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image(Images.juice.rawValue).resizable()
            Color.dark30 // Kendi assets/colors içinde oluşturduğum renk Colors.black.opacity(0.3) de aynı şey
           
            VStack{
                Image(Icons.appLogo.rawValue)
                FacebookButton(onTap:{}).padding(Edge.Set.top,40)
            }.padding(.paddingAll) // declerated in extension
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
    }
}



