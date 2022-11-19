//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.openURL) private var openURL
    var body: some View {
        VStack{
            Spacer()

            ImageItems.Authentication.login.rawValue.image()
            
            Text(LocaleKeys.Login.welcomeBack.rawValue.locale()).font(.system(size:FontSizes.title1,weight: .semibold))
                .foregroundColor(.black)
            
            HTextIconField(hint: LocaleKeys.General.emailHint.rawValue, iconName: IconItems.Login.mail.rawValue)
            HTextSecureIconField(hint: LocaleKeys.General.passwordHint.rawValue, iconName: IconItems.Login.lock.rawValue)
                .padding(.top,PagePadding.All.normal.rawValue)

            Divider()

            NormalButton(onTap: {
                print("Clicked")
            }, title: LocaleKeys.Login.createAccount.rawValue)
            .padding(.top,PagePadding.All.normal.rawValue)

            Text(LocaleKeys.Login.termsAndConditions.rawValue.locale()).environment(\.openURL, OpenURLAction(handler: {url in
                print(url)
                
                return .systemAction(url)
               
            })).padding(.top,PagePadding.All.normal.rawValue).font(.system(size:FontSizes.caption1,weight: .regular))
                .foregroundColor(.black)

            Spacer()
            
        }.padding(.all,PagePadding.All.normal.rawValue)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private struct HTextIconField: View {
    let hint: String
    let iconName: String
    var body: some View {
        HStack{
            iconName.image()
            TextField(hint.locale(),text: .constant(""))
            
        // style işlemini dışarı çıkartıp modifier ile pass geçtik
        }.modifier(TextFieldModifier())
    }
}

private struct HTextSecureIconField: View {
    let hint: String
    let iconName: String
    var body: some View {
        HStack{
            iconName.image()
            SecureField(hint.locale(), text: .constant(""))
            
        // style işlemini dışarı çıkartıp modifier ile pass geçtik
        }.modifier(TextFieldModifier())
    }
}
