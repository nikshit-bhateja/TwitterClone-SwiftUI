//
//  CustomInputFields.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 06/05/24.
//

import SwiftUI

struct CustomInputFields: View {
    let imageName: String
    let placeHolder: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeHolder, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputFields_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputFields(imageName: "envelope", placeHolder: "Email", text: .constant(""))
    }
}
