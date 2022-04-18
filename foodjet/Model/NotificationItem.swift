//
//  NotificationItem.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 23/3/2565 BE.
//

import Foundation

struct NotificationItem : Identifiable, Decodable {
    var id : Int
    var title : String
    var description : String
    var time : String
    var type : Int
}
