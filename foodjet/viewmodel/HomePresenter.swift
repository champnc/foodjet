//
//  HomePresenter.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 21/3/2565 BE.
//

import Foundation

class HomePresenter {
    
    weak private var homeViewDelegate : HomeViewDelegate?
    
    func setViewDelegate(homeViewDelegate:HomeViewDelegate?){
        self.homeViewDelegate = homeViewDelegate
    }
}
