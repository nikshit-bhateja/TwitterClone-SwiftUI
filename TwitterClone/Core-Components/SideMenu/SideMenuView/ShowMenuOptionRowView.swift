//
//  ShowMenuOptionRowView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 21/04/23.
//

import SwiftUI

struct ShowMenuOptionRowView: View {
    let optionViewRow : SideMenuViewModel
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: optionViewRow.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(optionViewRow.description)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct ShowMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        ShowMenuOptionRowView(optionViewRow: .profile)
    }
}
