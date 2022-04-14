//
//  HomeView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 20/3/2565 BE.
//

import SwiftUI

struct HomeView: View {
    @State var searchQuery = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Header").font(.title2)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:20){
                            FoodItem()
                            FoodItem()
                            FoodItem()
                            FoodItem()
                        }.padding()
                    }
                    Text("Header").font(.title2)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:20) {
                            FoodItem()
                            FoodItem()
                            FoodItem()
                            FoodItem()
                        }.padding()
                    }
                    Text("Header").font(.title2)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:20) {
                            FoodItem()
                            FoodItem()
                            FoodItem()
                            FoodItem()
                        }.padding()
                    }
//                    Text("Header").font(.title2)
//                    ScrollView(.horizontal,showsIndicators: false){
//                        HStack(spacing:20) {
//                            FoodItem()
//                            FoodItem()
//                            FoodItem()
//                            FoodItem()
//                        }
//                    }
                    
                }.padding()
            }.navigationTitle(Text("Home")).searchable(text: $searchQuery,placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

struct FoodItem : View {
    var body: some View {
        NavigationLink(destination: {
            DetailView()
        }, label: {
            Text("Item").foregroundColor(Color.black).frame(width: 200, height: 150).background(Color.yellowLight).cornerRadius(15).shadow(color: Color.gray, radius: 2, x: 2, y: 2)
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().previewInterfaceOrientation(.portrait)
        FoodItem()
    }
}
