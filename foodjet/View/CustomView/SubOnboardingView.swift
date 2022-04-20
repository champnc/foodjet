//
//  SubOnboardingView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/4/2565 BE.
//

import SwiftUI

struct SubOnboardingView: View {
    var imageName: String
    var text: String
    
    init(_ imageName: String,_ text: String) {
        self.imageName = imageName
        self.text = text
    }
    
    var body: some View {
        VStack {
            LottieView(filename: imageName).frame(maxWidth: 300, maxHeight: 300)
            Text(text)
        }
    }
}

struct SubOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        SubOnboardingView("order-food", "test")
    }
}
