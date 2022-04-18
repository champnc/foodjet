//
//  MotherView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 11/4/2565 BE.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .authenPage:
            AuthenView(viewRouter: viewRouter)
        case .onboardPage:
            AuthenView(viewRouter: viewRouter)
        case .mainPage:
            MainView(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView(viewRouter: ViewRouter())
    }
}

enum Page {
    case authenPage
    case onboardPage
    case mainPage
    
}
