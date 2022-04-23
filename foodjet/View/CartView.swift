//
//  CartView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 12/4/2565 BE.
//

import SwiftUI
import Foundation

struct CartView: View {
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var datas = ReadCartData()
    
    var body: some View {
        
        NavigationView {
            List(datas.cartList) { cart in
                NotificationItemView(title: cart.title, time: cart.time, desc: "")
            }
            .navigationTitle(Text("Cart"))
            .navigationBarItems(leading: BackButton(goBack: self.goBack))
        }
    }
    
    func goBack() {
        viewRouter.currentPage = .mainPage
    }
}

struct BackButton: View {
    var goBack : () -> ()

    var body: some View {
        Button(action: {
            self.goBack()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewRouter: ViewRouter())
    }
}

class ReadCartData: ObservableObject  {
    @Published var cartList = [CartItem]()

        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "MockCart", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let cart = try? JSONDecoder().decode([CartItem].self, from: data!)
        self.cartList = cart!
    }
}
