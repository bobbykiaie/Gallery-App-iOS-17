//
//  GalleryView.swift
//  Restaurants
//
//  Created by Babak Kiaie on 11/19/23.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var clickedImage = ""
    var dataService = DataService()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            GeometryReader { proxy in
                ScrollView {
                    LazyVGrid(columns: [GridItem(spacing: 10),GridItem(spacing: 10), GridItem(spacing: 10)],spacing: 10, content: {
                        ForEach(photoData, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    clickedImage = p
                                    sheetVisible.toggle()
                                    
                                }
                        }
                    })
                }
            }
           
        }
        .padding(.horizontal)
        .onAppear(perform: {
            photoData = dataService.getPhotos()
        })
        .sheet(isPresented: $sheetVisible) {
            PhotoView(displayedImage: $clickedImage)
        }
    }
}

#Preview {
    GalleryView()
}
