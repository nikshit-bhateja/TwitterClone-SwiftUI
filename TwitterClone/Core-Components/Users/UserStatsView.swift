//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 21/04/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 25){
            HStack{
                Text("200")
                    .font(.subheadline).bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(Color(.gray))
            }
            HStack{
                Text("2.9M")
                    .font(.subheadline).bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(Color(.gray))
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
