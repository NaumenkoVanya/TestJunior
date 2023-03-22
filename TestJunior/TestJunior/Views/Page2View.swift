//
//  Page2View.swift
//  TestJunior
//
//  Created by Ваня Науменко on 15.03.23.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        Image(systemName: "heart")
            .resizable()
            .frame(width: 200, height: 200)
    }
}

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
    }
}
