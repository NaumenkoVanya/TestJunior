//
//  PagePerson.swift
//  TestJunior
//
//  Created by Ваня Науменко on 21.03.23.
//

import SwiftUI

// MARK: - PagePerson

struct PagePerson: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Profile")
                        .font(.title)
                        .bold()
                    // .padding()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(50)
                        .background(.blue)
                        .cornerRadius(50)
                    Text("Satria Adch Pradana")
                        .font(.system(.title3))
                        .bold(true)
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .padding(.trailing)
                        Text("Upload item")
                    }
                    .frame(maxWidth: 350, maxHeight: 55, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                    .cornerRadius(20)
                }.padding(.bottom, 20)
                HStack(spacing: 80) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Trade store")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .bold()
                .font(.system(size: 25))
                HStack(spacing: 80) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Payment      method")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .padding(.top)
                .bold()
                .font(.system(size: 25))
                HStack(spacing: 78) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Balance        ")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .padding(.top)
                .bold()
                .font(.system(size: 25))
                HStack(spacing: 70) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Trade history")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .padding(.top)
                .bold()
                .font(.system(size: 25))
                HStack(spacing: 90) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Restore Purchase")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .padding(.top)
                .bold()
                .font(.system(size: 25))
                HStack(spacing: 116) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Help")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .padding(.top)
                .bold()
                .font(.system(size: 25))
                HStack(spacing: 100) {
                    Image(systemName: "creditcard").background(Color.brown)
                        .cornerRadius(40)
                    Text("Log out")
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }.foregroundColor(.black)
                }
                .padding(.top)
                .bold()
                .font(.system(size: 25))
            }
        }
    }
}

// MARK: - PagePerson_Previews

struct PagePerson_Previews: PreviewProvider {
    static var previews: some View {
        PagePerson()
    }
}
