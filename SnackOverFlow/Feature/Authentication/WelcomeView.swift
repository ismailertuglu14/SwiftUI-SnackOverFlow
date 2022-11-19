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
           
            BodyView() // declerated in extension
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().ignoresSafeArea(.all)
    }
}




private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            
            VStack{
                Spacer()
                Image(Icons.appLogo.rawValue)
                Spacer()
                FacebookButton(onTap:{}).padding(Edge.Set.top,40)
                GoogleButton(onTap: {})
                AppleButton(onTap: {})
                Divider().background(Color.peach)
                    .frame(width: geometry.dw(width: 0.6) ,height: DividerViewSize.normal).padding(.all,PagePadding.All.normal.rawValue).foregroundColor(Color.peach)
                EmailButton(onTap: {})
                Spacer().frame(height: geometry.dh(height: 0.08))
            }.padding(.paddingAll)
            //Vstack Ending
        }
        
    }
}

