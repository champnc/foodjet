//
//  AuthenView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 11/4/2565 BE.
//

import SwiftUI

struct AuthenView: View {
    @StateObject var viewRouter: ViewRouter
    @State var isModal: Bool = false
    var body: some View {
        
        VStack {
            Button(action: {
                viewRouter.currentPage = .mainPage
            }) {
                Text("to mainview")
            }
        }
    }
    
}


struct AuthenView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenView(viewRouter: ViewRouter())
    }
}
