//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 23/04/23.
//

import SwiftUI

struct NewTweetView: View {
    @State private var tweetCaption: String = ""
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    debugPrint("Tweet Post")
                } label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .font(.subheadline).bold()
                        .foregroundColor(Color(.white))
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                }


            }
            .padding(.horizontal)
            
            HStack(alignment: .top){
                
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea("NNNNNN", text: $tweetCaption)
                
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
