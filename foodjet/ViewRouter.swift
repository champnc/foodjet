//
//  ViewRouter.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 11/4/2565 BE.
//

import Foundation

class ViewRouter : ObservableObject {
    
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = .onboardPage
        } else {
            currentPage = .loginPage
        }
    }
    @Published var currentPage: Page
}
