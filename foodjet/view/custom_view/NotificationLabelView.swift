//
//  NotificationLabelView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 7/4/2565 BE.
//

import SwiftUI

struct NotificationLabelView: View {
    
    var digit : Int
    var body: some View {
        ZStack {
            Capsule().fill(Color.red).frame(width: 30 * CGFloat(numOfDigits()), height: 45, alignment: .topTrailing).position(CGPoint(x: 150, y: 0))
            Text("\(digit)")
                .foregroundColor(Color.white)
                .font(Font.system(size: 35).bold()).position(CGPoint(x: 150, y: 0))
        }
    }
    func numOfDigits() -> Float {
        let numOfDigits = Float(String(digit).count)
        return numOfDigits == 1 ? 1.5 : numOfDigits
    }
    
}

struct NotificationLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationLabelView(digit: 0)
    }
}
