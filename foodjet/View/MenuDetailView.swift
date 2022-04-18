//
//  MenuDetailView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 15/4/2565 BE.
//

import SwiftUI

struct MenuDetailView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Image("food-placeholder").resizable().scaledToFit().padding().frame(maxWidth: 400, maxHeight: 400)
                    Text("eiei")
                    HStack {
                        Button {
                            print("minus click")
                        } label: {
                            Image(systemName:"minus").foregroundColor(.orangeLight).font(.system(size: 24, weight: .bold))
                        }
                        Text("0").frame(width: 30, height: 20).border(.gray)
                        Button {
                            print("plus click")
                        } label: {
                            Image(systemName:"plus").foregroundColor(.orangeLight).font(.system(size: 24, weight: .bold))
                        }
                        
                    }
                    Spacer()

                }
            }
            Button {
                print("confirm click")
            } label: {
                Text("Confirm").foregroundColor(.black).frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50).padding(.horizontal).background(Color.yellowLight).cornerRadius(25)
            }.padding([.leading, .trailing], 20)


        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView()
    }
}
