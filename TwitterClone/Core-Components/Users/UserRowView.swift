//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 21/04/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 5){
                Text("Nikshit")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("BhatejaNikk")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
