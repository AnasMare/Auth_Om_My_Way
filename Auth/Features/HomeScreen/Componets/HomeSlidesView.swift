//
//  HomeSlidesView.swift
//  Auth
//
//  Created by user on 2/26/24.
//

import SwiftUI
struct HomeSlidesView: View {
    let slide: HomeSlide
    
    var body: some View {
        VStack {
            Image(slide.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            
        }
    }
}


#Preview {
    HomeSlidesView(slide: HomeSlide(imageName: ""))
}
