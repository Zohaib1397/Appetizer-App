//
//  AppetizerHomeView.swift
//  Appetizer
//
//  Created by Zohaib Ahmed on 22/07/2024.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var viewModel = AppetizerViewModel()
    
    var body: some View {
        ZStack{
            NavigationStack{
                List(viewModel.appetizers){appetizer in
                    AppetizerListView(appetizer: appetizer)
                }.navigationTitle("Appetizers")
            }.onAppear{
                viewModel.getAppetizers()
            }
            if viewModel.isLoading{
                LoadingView()
            }
        }.alert(item: $viewModel.alertItem){ alertItem in
                Alert(title: alertItem.title, message: alertItem.description, dismissButton: alertItem.alertButton)
                
        }
    }
    
}

#Preview {
    HomeScreen()
}
