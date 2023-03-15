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
    @State private var errorMessage = ""
    @State private var showTabBar = false
    @State private var showErrorAlert = false

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

            VStack {
                Button {
                    login()
                } label: {
                    Text("Login")
                        .frame(height: 55)
                        .fontWeight(.bold)
                        .padding(.horizontal, 140)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
            }.padding(.top, 80)

        }.padding()
            .alert(isPresented: $showErrorAlert, content: {
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            })
            .fullScreenCover(isPresented: $showTabBar, content: {
                TabBarView()
            })
    }

    func login() {
        if !isValidEmail(firstName: firstName) {
            showErrorAlert(message: "Invalid First name")
            return
        }

        if password.count < 6 {
            showErrorAlert(message: "Password must be at least 6 characters")
            return
        }

        if userExists(firstName: firstName, password: password) {
            showTabBar = true
        } else {
            showErrorAlert(message: "Invalid email or password")
        }
    }

    func showErrorAlert(message: String) {
            errorMessage = message
            showErrorAlert = true
    }

    func isValidEmail(firstName: String) -> Bool {
        return true
    }

    func userExists(firstName: String, password: String) -> Bool {
        return true
    }
}
struct TabBarView: View {
    var body: some View {
        TabView {
            Page1View()
                .tabItem {
                    Label("Page 1", systemImage: "1.circle")
                }
            Page2View()
                .tabItem {
                    Label("Page 2", systemImage: "2.circle")
                }
        }
    }
}

// MARK: - LoginView_Previews

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
