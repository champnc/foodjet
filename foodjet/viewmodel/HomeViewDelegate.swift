//
//  HomeViewDelegate.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 21/3/2565 BE.
//

import Foundation

protocol HomeViewDelegate: NSObjectProtocol {
    func displayFoodStorelist(description:(FoodStoreItem))
    func displayRecommendFoodlist(description:(FoodStoreItem))
}
