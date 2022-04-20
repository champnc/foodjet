//
//  OnboardingView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/4/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject var viewRouter: ViewRouter
    @State var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                SubOnboardingView("order-food", "test 1").tag(0)
                SubOnboardingView("delivery-man", "test 2").tag(1)
                SubOnboardingView("food-to-client", "test 3").tag(2)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(width: .infinity, height: .infinity, alignment: .center)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewRouter: ViewRouter())
    }
}
