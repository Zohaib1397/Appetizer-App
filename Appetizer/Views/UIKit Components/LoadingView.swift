//
//  LoadingView.swift
//  Appetizer
//
//  Created by Zohaib Ahmed on 22/07/2024.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable{
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
    
}


struct LoadingView: View{
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            ActivityIndicator()
        }
    }
}
