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
                        Text("Ongoing").foregroundColor(selectedTab == .FirstTab ? Color.orangeLight : Color.gray)
                    }
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                    Spacer()
                    VStack {
                        Text("Finished").foregroundColor(selectedTab == .SecondTab ? Color.orangeLight : Color.gray)
                    }
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                    Spacer()
                    VStack {
                        Text("Canceled").foregroundColor(selectedTab == .ThirdTab ? Color.orangeLight : Color.gray)
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
            }.navigationTitle(Text("Order"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
        OrderItem()
    }
}

enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}

struct FirstTabView : View {
    
    var body : some View {
        List {
            OrderItem()
            OrderItem()
            OrderItem()
        }.frame(maxHeight: .infinity).refreshable {
            
        }
    }
}

struct SecondTabView : View {
    
    var body : some View {
        List {
            OrderItem()
            OrderItem()
            OrderItem()
        }.frame(maxHeight: .infinity).refreshable {
            
        }
    }
}

struct ThirdTabView : View {
    
    var body : some View {
        List {
            OrderItem()
            OrderItem()
            OrderItem()
        }.frame(maxHeight: .infinity).refreshable {
            
        }
    }
}

struct OrderItem : View {
    var body: some View {
        HStack {
            Circle()
                .fill(Color.yellowLight)
                .frame(width: 60, height: 60)
            VStack {
                VStack(alignment: .leading) {
                    Text("RestaurantName").bold()
                    HStack {
                        Text("From :")
                        Spacer()
                        Text("Date")
                    }
                    HStack {
                        Text("To :")
                        Spacer()
                        Text("Time")
                    }
                }.frame(maxWidth: .infinity).padding()
            }
        }
    }
}
