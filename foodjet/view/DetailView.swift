//
//  DetailView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 9/4/2565 BE.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
            ScrollView(.vertical) {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            MenuOverviewItemView()
                            MenuOverviewItemView()
                            MenuOverviewItemView()
                        }.padding()
                    }
                    MenuSectionView()
                    Divider()
                    MenuSectionView()
                    Divider()
                    MenuSectionView()
                    Divider()
//                    VStack {
//                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    }
//                    VStack {
//                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    }
//                    VStack {
//                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    }
                }.navigationBarTitle("Menu Name")
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct MenuItem : Identifiable , Decodable {
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
                HStack {
                    Text("image").frame(width: 75, height: 75).foregroundColor(.black).background(.yellow).cornerRadius(5).shadow(color: .gray, radius: 2, x: 2, y: 2)
                    VStack(alignment: .leading) {
                        Text("\(item.name) Item")
                        Text("\(item.price.formatted()) ฿").bold()
                    }.padding(.leading)
                    Spacer()
                    Image(systemName: "plus").foregroundColor(.orange)
                }
                Divider()
            }
            
            
        }.padding().background()
    }
}

struct MenuOverviewItemView: View {
    var body: some View {
        ZStack {
            Text("Item").foregroundColor(Color.black).frame(width: 300, height: 250).background(Color.yellow).cornerRadius(15).shadow(color: Color.gray, radius: 2, x: 2, y: 2)
        }
    }
}
