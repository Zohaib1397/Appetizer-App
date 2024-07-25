//
//  ContentView.swift
//  Appetizer
//
//  Created by Zohaib Ahmed on 22/07/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    Image(systemName:"house")
                    Text("Home")
                }
            ProfileScreen()
                .tabItem{
                    Image(systemName:"person")
                    Text("Profile")
                }
            OrderScreen()
                .tabItem{
                    Image(systemName:"bag")
                    Text("Order")
                }
        }
    }
}

#Preview {
    AppetizerTabView()
}
