//
//  CartView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 12/4/2565 BE.
//

import SwiftUI
import Foundation

struct CartView: View {
    @StateObject var viewRouter: ViewRouter
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .edgesIgnoringSafeArea(.all)
                    
                    Text("Hello")
                }
            }
            .navigationBarItems(leading: BackButton(goBack: self.goBack))
        }
    }
    
    func goBack() {
        viewRouter.currentPage = .mainPage
    }
}

struct BackButton: View {
    var goBack : () -> ()

    var body: some View {
        Button(action: {
            self.goBack()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewRouter: ViewRouter())
    }
}
