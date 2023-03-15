//
//  ContentView.swift
//  TestJunior
//
//  Created by Ваня Науменко on 11.03.23.
//

import CoreData
import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var isAuthorized: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 10)
                Text("Sing in")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("First name", text: $firstName)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding(.top, 70)
                TextField("Last name", text: $lastName)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                TextField("Email", text: $email)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                Button(action: {
                    if !firstName.isEmpty,
                       !lastName.isEmpty,
                       !email.isEmpty
                    {
                        isAuthorized = true
                    }
                }, label: {
                    Text("Sing in")
                        .frame(height: 55)
                        .padding(.horizontal, 140)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .fontWeight(.bold)
                }).padding(.top, 40)

                if isAuthorized {
                    Text("You are authorized")
                        .font(.headline)
                        .foregroundColor(.green)
                }
                
                Button(action: {}) {
                    NavigationLink(destination: LoginView()) {
                        HStack {
                            Text("Already have an account?")
                                .foregroundColor(.gray)
                            Text("Long in")
                                .fontWeight(.bold)
                        }
                    }
                }   .padding(.top, 10)
                    .padding(.trailing, 70)

                Button(action: {}) {
                    HStack {
                        Image("iconGoogle")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Sing in with Google")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            
                    }
                    .padding(.top,50)
                }
                Button(action: {}) {
                    HStack {
                        Image("iconApple")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Sing in with Apple")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    .padding()
                }
            }.padding()
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
