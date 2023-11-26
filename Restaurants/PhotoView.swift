//
//  PhotoView.swift
//  Restaurants
//
//  Created by Babak Kiaie on 11/25/23.
//

import SwiftUI

struct PhotoView: View {
    @Binding var displayedImage: String
    
    var body: some View {
        Image(displayedImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    PhotoView(displayedImage: .constant("gallery1"))
}
