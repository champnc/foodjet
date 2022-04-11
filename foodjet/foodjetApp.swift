//
//  foodjetApp.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 18/3/2565 BE.
//

import SwiftUI

@main
struct foodjetApp: App {
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            BaseView(viewRouter: viewRouter)
        }
    }
}
