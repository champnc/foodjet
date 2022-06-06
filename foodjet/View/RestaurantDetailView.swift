//
//  DetailView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 9/4/2565 BE.
//

import SwiftUI

struct RestaurantDetailView: View {
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            ScrollView(.vertical) {
                VStack {
                    HStack{
                        Text("Recommended").font(.title2).bold()
                        Image(systemName: "star.fill").scaledToFit()
                        Spacer()
                    }.padding()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            MenuOverviewItemView()
                            MenuOverviewItemView()
                            MenuOverviewItemView()
                        }.padding(.horizontal)
                    }
                    MenuSectionView()
                    Divider()
                    MenuSectionView()
                    Divider()
                    MenuSectionView()
                    Divider()
                }.navigationBarTitle("Restaurant Name")
                
            }
            if true {
                NavigationLink(destination: {
                    OrderOverviewView()
                }, label: {
                    HStack{
                        Text("eiei")
                        Spacer()
                        Text("100")
                    }.padding().frame(width: UIScreen.main.bounds.size.width - 40, height: 50).background(.white).cornerRadius(15).offset(x: -20, y: -20).shadow(color: .gray, radius: 2, x: 2,y: 2)
                })
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView()
    }
}

struct MenuItem : Identifiable , Decodable, Equatable {
    var id = UUID()
    var name : String
    var price : Double
}

struct MenuSectionView: View {
    let list = [MenuItem(name: "menu1", price: 10.0),
                MenuItem(name: "menu2", price: 20),
                MenuItem(name: "menu3", price: 30)]
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Menu Section").font(.title2).bold()
                Spacer()
            }
            ForEach(list) { item in
                NavigationLink {
                    MenuDetailView()
                } label: {
                    HStack {
                        Image("food-placeholder").resizable().scaledToFit().frame(width: 75, height: 75).background(Color.yellowLight).cornerRadius(5).shadow(color: .gray, radius: 2, x: 2, y: 2)
                        VStack(alignment: .leading) {
                            Text("\(item.name) Item").foregroundColor(.black)
                            Text("\(item.price.formatted()) ฿").bold().foregroundColor(.black)
                        }.padding(.leading)
                        Spacer()
                        Image(systemName: "plus").foregroundColor(.orangeLight)
                    }
                }

                
                if item != list.last {
                    Divider()
                }
            }
            
            
        }.padding().background()
    }
}

struct MenuOverviewItemView: View {
    var body: some View {
        NavigationLink {
            MenuDetailView()
        } label: {
            ZStack(alignment: .bottomTrailing) {

                Image("food-placeholder").resizable().scaledToFit().frame(width: 300, height: 300).background(Color.yellowLight).cornerRadius(15).shadow(color: Color.gray, radius: 2, x: 2, y: 2)
                
                Text("Menu Name").foregroundColor(.black).bold().offset(x: -10, y: -10)
            }
        }
    }
}
