//
//  ContentView.swift
//  TestJunior
//
//  Created by Ваня Науменко on 11.03.23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isAuthorized: Bool = false

    
    var body: some View{
        VStack {
            Text("Sing in")
                .font(.title)
            TextField("First name", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Last name", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                if !firstName.isEmpty,
                   !lastName.isEmpty,
                   !email.isEmpty {
                    
                    isAuthorized = true
                }
            }, label: {
                Text("Sing in")
                    .frame(height: 50)
                    .padding(.horizontal, 155)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
            })
            Button(action: {
            }) {
                HStack{
                    Text("Already have an account?")
                        .foregroundColor(.gray)
                    Text("Long in")
                }
            }
            Button(action: {
            }) {
                HStack{
                    Image("iconGoogle")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Sing in with Google")
                        .foregroundColor(.black)
                }
                .padding()
            }
            Button(action: {
            }) {
                HStack{
                    Image("iconApple")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Sing in with Apple")
                        .foregroundColor(.black)
                }
                .padding()
            }
            
            
            
            
        }
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
