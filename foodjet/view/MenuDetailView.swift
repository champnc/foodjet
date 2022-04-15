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
            Image("food-placeholder").resizable().scaledToFit().padding().frame(maxWidth: 400, maxHeight: 400)
            Text("eiei")
            HStack {
                Image(systemName:"minus").foregroundColor(.black)
                Text("0")
                Image(systemName:"plus").foregroundColor(.black)
            }
        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView()
    }
}
