//
//  DetailView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 9/4/2565 BE.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            Text("Hello, World!")
                            Text("Hello, World!")
                        }
                    }
                    VStack {
                        HStack{
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.title2).bold()
                            Spacer()
                        }
                        var list = ["1","2","3"]
                        ForEach(list) { item in
                            Text("\(item) List Item")
                        }
                        
                        
                    }.padding().background()
//                    VStack {
//                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    }
//                    VStack {
//                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    }
//                    VStack {
//                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
