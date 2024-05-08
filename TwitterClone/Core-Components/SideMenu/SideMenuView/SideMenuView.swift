//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 21/04/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Nikshit Bhateja")
                        .font(.headline)
                    
                    Text("@bhatejanikshit")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading, 20)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { options in
                if options == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        ShowMenuOptionRowView(optionViewRow: options)
                    }
                } else {
                    ShowMenuOptionRowView(optionViewRow: options)
                }
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
