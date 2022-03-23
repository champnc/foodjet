//
//  NotificationView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 23/3/2565 BE.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            List() {
                ForEach(0..<8) { _ in
                    HStack {
                        NotificationItem()
                    }
                }
            }.navigationTitle(Text("Notification")).listStyle(InsetGroupedListStyle())
        }
    }
}

struct NotificationItem: View {
    var body: some View {
        HStack(spacing : 20) {
            VStack(alignment: .leading, spacing: -20) {
                HStack {
                    Text("Notification").bold().frame(height: 50)
                    Spacer()
                    Text("10:00").frame(height: 50)
                }
                HStack(alignment: .lastTextBaseline) {
                    Text("Notification").frame(height: 50).font(.caption2)
                }
            }
            Circle().fill(Color.orange).frame(width: 10, height: 10)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
