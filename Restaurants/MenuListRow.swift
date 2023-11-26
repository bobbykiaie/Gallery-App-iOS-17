//
//  ListCellView.swift
//  Menu App
//
//  Created by Babak Kiaie on 11/19/23.
//

import SwiftUI

struct MenuListRow: View {
   var item: MenuItem

    var body: some View {
        HStack {
            Image(item.imageName).resizable().aspectRatio(contentMode: .fit).frame(height: 50).cornerRadius(10)
            Text(item.name).bold()
            Spacer()
            Text("$" + item.price)
        }.listRowSeparator(.hidden)
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test", price: "0.00", imageName: "california-roll"))
}
