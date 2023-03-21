//
//  Page1View.swift
//  TestJunior
//
//  Created by Ваня Науменко on 15.03.23.
//

import SwiftUI

// MARK: - Page1View

struct Page1View: View {
    @State private var lookingFor = ""
    @State private var selection = 0

    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Button(action: {}) {
                        Image(systemName: "1.circle")
                    }.padding(.trailing, 300)
                    Text("Trade by data").padding(.horizontal)
                    Button(action: {}) {
                        Image(systemName: "2.circle")
                    }.padding(.leading, 300)
                }
                HStack {
                    TextField("What are you looking for?", text: $lookingFor).overlay(Image(systemName: "magnifyingglass").padding(.leading, 280)
                        .foregroundColor(.gray))
                        .padding(5)
                        .background(Color(CGColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 1)).opacity(0.1))
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                }

                // MARK: Store category buttons

                HStack(alignment: .top, spacing: 3, content: {
                    VStack {
                        Button(action: {}) {
                            Image("iconSmartPhone")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .padding()
                        .background(Color.gray)
                        .clipShape(Circle())
                        Text("Phones")
                    }
                    VStack(alignment: .leading) { Button(action: {}) {
                        Image("iconHeadPhones")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    .background(Color.gray)
                    .clipShape(Circle())
                    Text("Head")
                    }

                    VStack { Button(action: {}) {
                        Image("iconGame")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    .background(Color.gray)
                    .clipShape(Circle())
                    Text("Games")
                    }

                    VStack { Button(action: {}) {
                        Image("iconCar")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    .background(Color.gray)
                    .clipShape(Circle())
                    Text("Car")
                    }

                    VStack { Button(action: {}) {
                        Image("iconFurniture")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    .background(Color.gray)
                    .clipShape(Circle())
                    Text("Furniture")
                    }

                    VStack { Button(action: {}) {
                        Image("iconRobot")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    .background(Color.gray)
                    .clipShape(Circle())
                    Text("Kids")
                    }

                }).padding()

                ScrollView {
                    // MARK: Data in the Latest block

                    HStack {
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.gray
                                    .frame(width: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 120, height: 150)
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.gray
                                    .frame(width: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 120, height: 150)
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.gray
                                    .frame(width: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 120, height: 150)
                    }

                    // MARK: Data in the Flash Sale block

                    HStack {
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.gray
                                    .frame(width: 180)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 180, height: 250)
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.gray
                                    .frame(width: 180)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 180, height: 250)
                    }

                    // MARK: Data in the Brands block

                    HStack {
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.green
                                    .frame(width: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 120, height: 170)
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.green
                                    .frame(width: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 120, height: 170)
                        TabView {
                            ForEach(1 ... 10, id: \.self) { index in
                                Color.green
                                    .frame(width: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Page \(index)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(width: 120, height: 170)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }.scrollIndicators(ScrollIndicatorVisibility.never)
            }
        }
    }
}

// MARK: - Page1View_Previews

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View()
    }
}
