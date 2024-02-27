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
                .scaleEffect(0.9)
                .frame(width: geometry.size.width , height:300)
            }
            HStack{
                ButtonView(title: "Transporter", image: "transpoter_icon")
                ButtonView(title: "sender", image: "sender_icon")
            }
            Spacer()
                 .frame(height: UIScreen.main.bounds.height * 0.30) 
        }
  }
}

#Preview {
    HomeView()
}
