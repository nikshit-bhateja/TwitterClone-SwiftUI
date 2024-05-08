//
//  FeedView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 12/04/23.
//

import SwiftUI

struct FeedView: View {
    @State private var isShowNewTweetView : Bool = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                    }
                }
                .padding(.vertical)
            }
            
            Button {
                print("New tweet button pressed.")
                isShowNewTweetView.toggle()
            } label: {
                Image(systemName: "text.badge.plus")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .foregroundColor(Color.white)
            .background(Color(.systemBlue))
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $isShowNewTweetView) {
//                Text("New Tweet View")
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
