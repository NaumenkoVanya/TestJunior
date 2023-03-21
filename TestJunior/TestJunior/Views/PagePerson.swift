//
//  PagePerson.swift
//  TestJunior
//
//  Created by Ваня Науменко on 21.03.23.
//

import SwiftUI

struct PagePerson: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile")
                    .font(.system(size: 20))
                    .bold()
                    .padding()
                Image(systemName: "person.fill")
                
                Button(action: {
                    
                }) {
                    Image(systemName: "creditcard")
                    Text("Trade store")
                    
                    Image(systemName: "plus")
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.black)
                    .bold()
                    .font(.system(size: 25))
                    
            }
        }
    }
}

struct PagePerson_Previews: PreviewProvider {
    static var previews: some View {
        PagePerson()
    }
}
