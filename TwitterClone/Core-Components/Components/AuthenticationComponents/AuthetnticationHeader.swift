//
//  AuthetnticationHeader.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 06/05/24.
//

import SwiftUI

struct AuthetnticationHeader: View {
    let geo: CGSize
    let headerText1: String
    let headerText2: String
    var body: some View {
        VStack(alignment: .leading) {
            // Give Hstack for fill the VStack with device width.
            HStack{ Spacer() }
            Text(headerText1)
                .font(.largeTitle)
                .fontWeight(.semibold)
                
            Text(headerText2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: geo.height * 0.3)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedCorners(corners: .bottomRight, width: geo.width * 0.2, height: geo.width * 0.2))
    }
}

struct AuthetnticationHeader_Previews: PreviewProvider {
    static var previews: some View {
        AuthetnticationHeader(geo: CGSize(width: 414, height: 860), headerText1: "Hello. \nWelcome Back", headerText2: "\n(Welcome Back")
    }
}
