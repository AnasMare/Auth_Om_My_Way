//
//  InputView.swift
//  Auth
//
//  Created by user on 2/21/24.
//

import SwiftUI

struct InputView: View {
    @Binding var text :String
    let title:String
    let placeholder:String
    var isSecureField = false
    var body: some View {
        VStack(alignment: .leading){
            SwiftUI.Text(title)
                .foregroundColor(Color(.darkGray))
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size:14))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                   
            }else{
                TextField(placeholder, text: $text)
                    .font(.system(size:14))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
}
