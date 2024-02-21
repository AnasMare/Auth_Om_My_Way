//
//  LoginView.swift
//  Auth
//
//  Created by user on 2/21/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email=""
    @State private var password=""
    @State private var errorMessage: String = ""
    

    var body: some View {
        NavigationStack{
            VStack{
                Image("on_my_way")
                Spacer()
                    .frame(height: 120)
                InputView(text: $email, title: "Email Address", placeholder: "name@example.com").autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                InputView(text: $password, title: "Password", placeholder: "Enter Your Password",isSecureField: true).autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                NavigationLink{
                    RegistrationView()
                } label: {
                    HStack{
                        Text("Log in")
                     }.foregroundColor(.white)
                      .frame(width: 310,height: 51 )
                }.background(Color(.blue))
                    .padding(.vertical)
                
                NavigationLink{
                } label: {
                Text("Forgot Password")
                }.padding(.vertical)
                
                NavigationLink{
                 RegistrationView()
                } label: {
                Text("Create Account")
                }
               Spacer()
            }.padding(.top,50)
             .padding()
        }
    }
}


#Preview {
    LoginView()
}
