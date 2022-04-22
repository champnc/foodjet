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
            OnboardingView(viewRouter: viewRouter)
        case .mainPage:
            MainView(viewRouter: viewRouter)
        case .loginPage:
            LoginView(viewRouter: viewRouter)
        case .cartPage:
            CartView(viewRouter: viewRouter)
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
    case loginPage
    case cartPage
}
