//
//  PageBasket.swift
//  TestJunior
//
//  Created by Ваня Науменко on 21.03.23.
//

import SwiftUI

struct PageBasket: View {
    var body: some View {
        Image(systemName: "basket.fill")
            .resizable()
            .frame(width: 200, height: 200)
    }
}

struct PageBasket_Previews: PreviewProvider {
    static var previews: some View {
        PageBasket()
    }
}
