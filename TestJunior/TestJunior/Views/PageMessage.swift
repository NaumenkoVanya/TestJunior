//
//  PageMessage.swift
//  TestJunior
//
//  Created by Ваня Науменко on 21.03.23.
//

import SwiftUI

struct PageMessage: View {
    var body: some View {
        Image(systemName: "message")
            .resizable()
            .frame(width: 200, height: 200)
        
    }
}

struct PageMessage_Previews: PreviewProvider {
    static var previews: some View {
        PageMessage()
    }
}
