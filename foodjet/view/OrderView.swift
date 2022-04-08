//
//  OrderView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 8/4/2565 BE.
//

import SwiftUI

struct OrderView: View {
    @State var selectedTab = Tabs.FirstTab
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    VStack {
                        Text("First tab").foregroundColor(selectedTab == .FirstTab ? Color.blue : Color.gray)
                    }
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                    Spacer()
                    VStack {
                        Text("Second tab").foregroundColor(selectedTab == .SecondTab ? Color.blue : Color.gray)
                    }
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                    Spacer()
                    VStack {
                        Text("Third tab").foregroundColor(selectedTab == .ThirdTab ? Color.blue : Color.gray)
                    }
                    .onTapGesture {
                        self.selectedTab = .ThirdTab
                    }
                    Spacer()
                }
                .padding(.vertical)
                if selectedTab == .FirstTab {
                    FirstTabView()
                } else if selectedTab == .SecondTab {
                    SecondTabView()
                } else {
                    ThirdTabView()
                }
            }.background(Color.white).navigationTitle(Text("Order"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}

struct FirstTabView : View {
    
    var body : some View {
        ScrollView {
            Text("FIRST TAB VIEW")
        }.frame(maxHeight: .infinity)
    }
}

struct SecondTabView : View {
    
    var body : some View {
        ScrollView {
            Text("SECOND TAB VIEW")
        }.frame(maxHeight: .infinity)
    }
}

struct ThirdTabView : View {
    
    var body : some View {
        ScrollView {
            Text("THIRD TAB VIEW")
        }.frame(maxHeight: .infinity)
    }
}
