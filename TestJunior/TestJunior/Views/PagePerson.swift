//
//  PagePerson.swift
//  TestJunior
//
//  Created by Ваня Науменко on 21.03.23.
//

import SwiftUI

// MARK: - PagePerson

struct PagePerson: View {
@State private var loginView = LoginView()
    var body: some View {
        NavigationView {
            VStack {
                // MARK: Image User

                VStack {
                    Text("Profile")
                        .font(.title)
                        .bold()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .background(.blue)
                        .cornerRadius(50)
                    Text("Satria Adch Pradana")
                        .font(.system(.title3))
                        .bold(true)
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing)
                        Text("Upload item")
                    }
                    .frame(maxWidth: 350, maxHeight: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                    .cornerRadius(20)
                }

                // MARK: Button

                VStack {
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "creditcard")
                                .resizable()
                                .frame(width: 40, height: 30)
                                .padding(10)
                            Text("Trade store")
                            Image(systemName: "chevron.right")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                    .bold()
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "creditcard")
                                .resizable()
                                .frame(width: 40, height: 30)
                                .padding(10)
                            Text("Payment method")
                            Image(systemName: "chevron.right")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                    .bold()
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "creditcard")
                                .resizable()
                                .frame(width: 40, height: 30)
                                .padding(10)
                            Text("Balance")
                            Text("$ 1593")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                    .bold()
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "creditcard")
                                .resizable()
                                .frame(width: 40, height: 30)
                                .padding(10)
                            Text("Trade history")
                            Image(systemName: "chevron.right")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                    .bold()
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .resizable()
                                .frame(width: 40, height: 30)
                                .padding(10)
                            Text("Restore Purchase")
                            Image(systemName: "chevron.right")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                    .bold()
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .frame(width: 40, height: 35)
                                .padding(10)
                            Text("Help")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                    .bold()
                    
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "iphone.and.arrow.forward")
                                .resizable()
                                .frame(width: 40, height: 30)
                                .padding(10)
                            Text("Log out")
                        }
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .init(horizontal: .leading, vertical: .center))
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                        .cornerRadius(20)
                    }
                }
                .frame(idealWidth: .infinity, idealHeight: .infinity)
            }
            .bold()
        }
    }
}

// MARK: - PagePerson_Previews

struct PagePerson_Previews: PreviewProvider {
    static var previews: some View {
        PagePerson()
    }
}
