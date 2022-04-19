//
//  OnboardingView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/4/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                SubOnboardingView(image: "order-food").tag(0)
                SubOnboardingView(image: "delivery-man").tag(1)
                SubOnboardingView(image: "food-to-client").tag(2)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(width: .infinity, height: .infinity, alignment: .center)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
