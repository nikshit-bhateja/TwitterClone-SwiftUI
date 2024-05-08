//
//  TextArea.swift
//  TwitterClone
//
//  Created by Nikk Bhateja on 23/04/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text : String
    let placeholderText : String
    
    init(_ placeholderText: String, text: Binding<String>) {
        self.placeholderText = placeholderText
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading){
            if text.isEmpty {
                Text(placeholderText)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}

