//
//  ContentView.swift
//  Menu App
//
//  Created by Babak Kiaie on 11/19/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
            MenuListRow(item: item)
        
        }
        .listStyle(.plain)
        .listRowBackground(
            Color(.brown)
            .opacity(0.1))
        .onAppear(perform: {
            menuItems =  dataService.getData()
        })
    }
}

#Preview {
    MenuView()
}
