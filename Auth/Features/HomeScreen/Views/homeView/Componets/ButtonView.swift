//
//  SwiftUIView.swift
//  Auth
//
//  Created by user on 2/27/24.
//

import SwiftUI

struct ButtonView: View {
   
    let title:String
    let image:String
    var body: some View {
        VStack(){
            Button(action: {
                   }) {
                      VStack{
                          Image(image)
                              .font(.system(size: 24))
                          Text(title)
                              }
                  }
                  .frame(width: 120, height: 60) 
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
    ButtonView(title: "Transporter", image: "")
}

