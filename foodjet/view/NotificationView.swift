//
//  NotificationView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 23/3/2565 BE.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        List() {
            ForEach(0..<8) { _ in
                HStack {
                    NotificationItem()
                }
            }
        }
    }
}

struct NotificationItem: View {
    var body: some View {
        Text("Noti").frame(height: 50)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
