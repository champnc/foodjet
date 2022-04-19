//
//  SubOnboardingView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/4/2565 BE.
//

import SwiftUI

struct SubOnboardingView: View {
    var image: String
    
    var body: some View {
        VStack {
            LottieView(filename: image)
        }
    }
}

struct SubOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        SubOnboardingView(image: "order-food")
    }
}