//
//  HomeView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 20/3/2565 BE.
//

import SwiftUI

struct HomeView: View {
    @State var searchQuery = ""
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
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
                    }.padding()
                }.navigationTitle(Text("Home")).searchable(text: $searchQuery,placement: .navigationBarDrawer(displayMode: .always))
                if true {
                    Button {
                        viewRouter.currentPage = .cartPage
                    } label: {
                        ZStack {
                            Circle().foregroundColor(.white).frame(width: 75, height: 75).offset(x: -20, y: -20).shadow(color: .gray, radius: 2, x: 2,y: 2)
                            Image(systemName: "cart.fill").foregroundColor(.orangeLight).font(.system(size: 32, weight: .bold)).offset(x: -20, y: -20)
                        }
                    }
                }
            }
        }
    }
}

struct FoodItem : View {
    var body: some View {
        NavigationLink(destination: {
            RestaurantDetailView()
        }, label: {
            Text("Item").foregroundColor(Color.black).frame(width: 200, height: 150).background(Color.yellowLight).cornerRadius(15).shadow(color: Color.gray, radius: 2, x: 2, y: 2)
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewRouter: ViewRouter()).previewInterfaceOrientation(.portrait)
        FoodItem()
    }
}
