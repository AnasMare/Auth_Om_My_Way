//
//  HomeView.swift
//  Auth
//
//  Created by user on 2/26/24.
//

import SwiftUI
struct HomeSlide: Identifiable {
    let id = UUID()
    let imageName: String
}
    
struct HomeView: View {
    private let slides = [
        HomeSlide(imageName: "banner"),
        HomeSlide(imageName: "banner"),
        HomeSlide(imageName: "banner")
    ]
    @State private var currentPageIndex = 0
    @State private var isTapped = false
    var body: some View {
        VStack{
            
        
            
            GeometryReader { geometry in
                TabView(selection: $currentPageIndex) {
                    ForEach(0..<3) { index in
                        HStack {
                            HomeSlidesView(slide: slides[index])
                                .tag(index)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .scaleEffect(0.9) // Adjust the scale as per your preference
                .frame(width: geometry.size.width , height: geometry.size.height * 0.5)
            }
            
          
                  Button(action: {
                      
                  }) {
                      VStack{  
                          Image(systemName: "star.fill")
                              .font(.system(size: 24))
                          Text("Transporter")
                              .font(.headline)}
                  }
                  .padding()
                  .foregroundColor(.blue)
                  .background(Color.white)
                  .cornerRadius(10)
                  .overlay(
                             RoundedRectangle(cornerRadius: 10)
                                 .stroke(Color.blue, lineWidth: 1)
                         )
             
        }

     }
    
}

#Preview {
    HomeView()
}
