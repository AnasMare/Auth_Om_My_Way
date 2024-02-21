//
//  VerifyView.swift
//  Auth
//
//  Created by user on 2/22/24.
//
//
//  VerifyView.swift
//  Auth
//
//  Created by user on 2/22/24.
//

import SwiftUI

struct VerifyView: View {
  
    @StateObject var viewModel = ViewModel()
         @State var isFocused = false
         
         let textBoxWidth = UIScreen.main.bounds.width / 8
         let textBoxHeight = UIScreen.main.bounds.width / 8
         let spaceBetweenBoxes: CGFloat = 10
         let paddingOfBox: CGFloat = 1
         var textFieldOriginalWidth: CGFloat {
             (textBoxWidth*4)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
         }
         
    var body: some View {
        NavigationStack{
            VStack {
                Image("on_my_way")
                Spacer()
                    .frame(height: 100)
                Text("Verification Code")
                    .font(.title)
                    .padding()
                    .foregroundColor(.blue)
                
                ZStack {
                    
                    HStack (spacing: spaceBetweenBoxes){
                        otpText(text: viewModel.otp1)
                        otpText(text: viewModel.otp2)
                        otpText(text: viewModel.otp3)
                        otpText(text: viewModel.otp4)
                    }
                    TextField("", text: $viewModel.otpField)
                        .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                        .disabled(viewModel.isTextFieldDisabled)
                        .textContentType(.oneTimeCode)
                        .foregroundColor(.clear)
                        .accentColor(.clear)
                        .background(Color.clear)
                        .keyboardType(.numberPad)
                }
                
                Text("Enter 4-digit Verification Code").padding()
                NavigationLink{
                  VerifyView()
                } label: {
                    HStack{
                        Text("Verify")
                     }.foregroundColor(.white)
                      .frame(width: 310,height: 51 )
                }.background(Color(.blue))
                    .padding(.vertical)
                Spacer()
            }.padding(.top,50)
                .padding()
        }
    }
         
         private func otpText(text: String) -> some View {
             
             return Text(text)
                 .font(.title)
                 .frame(width: textBoxWidth, height: textBoxHeight)
                 .background(VStack{
                   Spacer()
                   RoundedRectangle(cornerRadius: 1)
                       .frame(height: 0.5)
                  })
                 .padding(paddingOfBox)
             
         }

    
    }




#Preview {
    VerifyView()
}

