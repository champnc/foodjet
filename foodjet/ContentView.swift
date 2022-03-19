//
//  ContentView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/3/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Hello, world!").padding()
            TextField("Email", text: self.$email).padding()
            TextField("Password", text: self.$password).padding()
            Button("Sign In") {}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
