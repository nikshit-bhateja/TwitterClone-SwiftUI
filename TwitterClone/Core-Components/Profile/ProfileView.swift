//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 16/04/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter : TweetFilterView = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack(alignment: .leading){
            //HeaderView
            headerView
           
            //Edit profile and Notifications button.
            actionButtonsOfBellAndEditProfile
            
            // User profile Details
            userProfileDetails

            // Profile filter segment controller
            profileFilterTab
            
            // Profile tweets as per filterTab
            profileTweetsView
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//MARK: ProfileView Extension
extension ProfileView{
    //MARK: Header View
    var headerView : some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack{
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(Color(.white))
                        .offset(x: 15, y: 12)
                }
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 34)
            }
        }
        .frame(height: 100)
    }
    
    //MARK: Notifications & Edit Profile Buttons
    var actionButtonsOfBellAndEditProfile : some View {
        HStack(spacing: 12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .foregroundColor(Color(.black))
                .padding(6)
                .overlay(Circle().stroke(Color(.gray), lineWidth: 0.75))
            
            Button {
                //ActionHere
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(Color(.black))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
        
    }
    
    //MARK: User profile details.
    var userProfileDetails : some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack{
                Text("Nikshit Bhateja")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@bhatejanikshit")
                .font(.subheadline)
                .foregroundColor(Color(.gray))
            
            Text("Jr. iOS Developer")
                .font(.subheadline)
            .padding(.vertical)
            
            HStack(spacing: 25){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                        
                    Text("Abohar, Punjab")
                }
                HStack{
                    Image(systemName: "link")
                    
                    Text("www.google.com")
                }
            }
            .font(.caption)
            .foregroundColor(Color(.gray))
            
            // followers and following data
            UserStatsView()
                .padding(.vertical)
            
        }
        .padding(.horizontal)
    }
    
    var profileFilterTab : some View {
        
        HStack {
            ForEach(TweetFilterView.allCases,id: \.rawValue) { item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else{
                        Capsule()
                            .foregroundColor(Color(.lightGray))
                            .frame(height: 3)
                        
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
    }
    
    var profileTweetsView : some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0 ... 10, id: \.self) { _ in
                    TweetRowView()
                }
            }
        }
        
    }
}
