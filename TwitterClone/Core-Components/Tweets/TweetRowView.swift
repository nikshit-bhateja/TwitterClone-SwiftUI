//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 12/04/23.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        //MARK: Screen start
        // Parent VStack
        VStack(alignment: .leading){
            //MARK: TweetRow
            HStack{
                // UserImage
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                // user information
                VStack(alignment: .leading, spacing: 5){
                    // Tweet-> Username, @name, Time
                    HStack{
                        Text("User Name")
                            .font(.subheadline)
                            .bold()
                        
                        Text("@username")
                            .foregroundColor(Color(.gray))
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(Color(.gray))
                            .font(.caption)
                    }
                    // tweet caption
                    Text("Tweet Caption goes here")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //MARK: Tweet action Buttons
            HStack{
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .foregroundColor(Color(.gray))
            .padding()
            
            Divider()
        }
        .padding(.bottom)
        .padding(.leading)
        .padding(.trailing)
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
