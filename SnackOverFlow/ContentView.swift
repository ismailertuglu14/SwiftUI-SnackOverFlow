//
//  ContentView.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()*/
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
