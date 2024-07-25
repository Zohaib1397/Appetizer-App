//
//  RemoteImage.swift
//  Appetizer
//
//  Created by Zohaib Ahmed on 24/07/2024.
//

import SwiftUI

final class ImageLoader: ObservableObject{
    
    @Published var image: Image?
    
    func load(fromURLString urlString: String){
        NetworkManager.shared.downloadImage(fromURLString: urlString){ uiImage in
            guard let uiImage = uiImage else{
                return
            }
            
            DispatchQueue.main.async{
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}


struct RemoteImage: View{
    
    var image: Image?
    
    var body: some View{
        image?.resizable() ?? Image("place-holder").resizable()
    }
    
}


struct AppetizerRemoteImage: View{
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View{
        RemoteImage(image: imageLoader.image)
            .onAppear{
                imageLoader.load(fromURLString: urlString)
            }
    }
    
}
