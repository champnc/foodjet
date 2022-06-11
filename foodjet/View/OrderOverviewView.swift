//
//  OrderOverviewView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 24/4/2565 BE.
//

import SwiftUI

struct OrderOverviewView: View {
    var body: some View {
            VStack {
                ScrollView(.vertical) {
                    HStack{
                        Text("Overview").font(.title2).bold()
                        Spacer()
                    }.padding()
                }
                VStack {
                    HStack{
                        Text("Total:").bold()
                        Spacer()
                        Text("100").bold()
                    }.padding(.horizontal,20)
                    Button {
                        
                    } label: {
                        HStack(alignment: .center, spacing: 10) {
                            Text("Place Order")
                                .bold()
                                .foregroundColor(Color.white)
                        }
                    }.frame(width: UIScreen.main.bounds.size.width - 40, height: 50)
                        .background(Color.orangeLight)
                        .cornerRadius(15)
                        .padding(.horizontal, 20).padding(.bottom, 20)
                }
            }.navigationBarTitle("", displayMode: .inline)
    }
}

struct OrderOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OrderOverviewView()
    }
}
