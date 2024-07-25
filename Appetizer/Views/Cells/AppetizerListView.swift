//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Zohaib Ahmed on 22/07/2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading){
                Text(appetizer.name)
                    .fontWeight(.medium)
                    .font(.title3)
                Text("$\(appetizer.price, specifier: "%.1f")")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }.padding()
        }
    }
}

#Preview {
    AppetizerListView(appetizer: MockData.sampleData)
}
