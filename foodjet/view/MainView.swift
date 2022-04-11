//
//  MainView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 7/4/2565 BE.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Home")
                Image(systemName: "house.fill")
            }
            OrderView().tabItem {
                Text("Order")
                Image(systemName: "clock.arrow.circlepath")
            }
            NotificationView().tabItem {
                Text("Notification")
                Image(systemName: "envelope").overlay(NotificationLabelView(digit: 0))
            }
            SettingView().tabItem {
                Text("Setting")
                Image(systemName: "gearshape.fill")
            }
        }.accentColor(.orange)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewRouter: ViewRouter())
    }
}
