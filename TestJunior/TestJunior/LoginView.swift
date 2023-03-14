//
//  LoginView.swift
//  TestJunior
//
//  Created by Ваня Науменко on 13.03.23.
//

import SwiftUI

// MARK: - LoginView

struct LoginView: View {
    @State private var firstName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome back")
                .fontWeight(.bold)
                .font(.system(size: 40))
            TextField("First name", text: $firstName)
                .padding(10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .padding(.top, 80)
            SecureField("Password", text: $password)
                .padding(10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
                .autocorrectionDisabled()
                
            VStack{
                Button {} label: {
                    Text("Sing in")
                        .frame(height: 55)
                        .padding(.horizontal, 140)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
            }.padding(.top, 80)
            
          

        }.padding()
    }
}

// MARK: - LoginView_Previews

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
