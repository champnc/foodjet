//
//  HomeView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 20/3/2565 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Header").bold().font(.title)
            VStack(alignment: .leading) {
                Text("Header").font(.title2)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:20){
                        FoodItem()
                        FoodItem()
                        FoodItem()
                        FoodItem()
                    }
                }
                Text("Header").font(.title2)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:20) {
                        FoodItem()
                        FoodItem()
                        FoodItem()
                        FoodItem()
                    }
                }
                Text("Header").font(.title2)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:20) {
                        FoodItem()
                        FoodItem()
                        FoodItem()
                        FoodItem()
                    }
                }
                Text("Header").font(.title2)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:20) {
                        FoodItem()
                        FoodItem()
                        FoodItem()
                        FoodItem()
                    }
                }
                Spacer()
            }.padding()
        }.frame(width: .infinity, height: .infinity, alignment: .topLeading).background(Color.red)
    }
}

struct FoodItem : View {
    var body: some View {
        Text("Item").frame(width: 200, height: 150).background(Color.white).cornerRadius(15)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}
