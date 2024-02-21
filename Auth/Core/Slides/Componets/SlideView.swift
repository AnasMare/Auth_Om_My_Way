//
//  SlideView.swift
//  Auth
//
//  Created by user on 2/26/24.
//

import SwiftUI




struct SlideView: View {
    
    let slide: Slide
    
    var body: some View {
        VStack {
            Image(slide.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            Text(slide.title)
                .font(.title)
                .bold()
                .padding()
            
            Text(slide.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    SlideView(slide: Slide(imageName: "", title: "", description: ""))
}
