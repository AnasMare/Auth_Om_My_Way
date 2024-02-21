//
//  RegistrationView.swift
//  Auth
//
//  Created by user on 2/22/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var firstName=""
    @State private var lastName=""
    @State private var email=""
    @State private var password=""
    @State private var confirmPassword=""
    @State private var agreedToPrivacy = false
    var body: some View {
        NavigationStack{
            VStack(){
                Image("on_my_way")
                Spacer()
                    .frame(height: 50)
                InputView(text: $firstName, title: "First Name", placeholder: "").autocapitalization(.none)
                
                InputView(text: $lastName, title: "Last Name", placeholder: "").autocapitalization(.none)
                
                InputView(text: $email, title: "Email Address", placeholder: "").autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                InputView(text: $password, title: "Password", placeholder: "",isSecureField: true).autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                InputView(text: $confirmPassword, title: "Repeat Password", placeholder: "",isSecureField: true).autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                HStack{  Button(action: {
                    agreedToPrivacy.toggle()
                }) {
                 Image(systemName: agreedToPrivacy ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundColor(agreedToPrivacy ? .blue : .gray)
                            .padding()
                 }
                    SwiftUI.Text("I agree to the terms and conditions")
                        .foregroundColor(Color(.gray))}
                NavigationLink{
                  VerifyView()
                } label: {
                    HStack{
                        Text("Sign Up")
                     }.foregroundColor(.white)
                      .frame(width: 310,height: 51 )
                }.background(Color(.blue))
                    .padding(.vertical)
                
            }
             .padding()
        }
    }
}

#Preview {
    RegistrationView()
}
