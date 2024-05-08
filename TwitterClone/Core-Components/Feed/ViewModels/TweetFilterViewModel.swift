//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 19/04/23.
//

import Foundation

enum TweetFilterView: Int, CaseIterable {
    
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets:
            return "Tweets"
            
        case .replies:
            return "Replies"
            
        case .likes:
            return "Likes"
        }
    }
    
}
