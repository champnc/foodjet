//
//  ContentView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/3/2565 BE.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
//            Text("Hello, world!").padding()
            TextField("Email", text: self.$email)
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.orangeLight, lineWidth: 2)
                ).padding([.bottom,.horizontal])

            TextField("Password", text: self.$password)
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.orangeLight, lineWidth: 2)
                ).padding([.bottom,.horizontal])
            
            Button {
                withAnimation {
                    viewRouter.currentPage = .mainPage
                }
            } label: {
                HStack(alignment: .center, spacing: 10) {
                    Text("GET STARTED")
                        .bold()
                        .foregroundColor(Color.white)
                }
            }.frame(minWidth: 0, maxWidth: 200, maxHeight: 50)
                .background(Color.orangeLight)
                .cornerRadius(4)
                .padding(.horizontal, 20)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}
