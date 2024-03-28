//
//  Docode-LearningApp.swift
//  Docode-LearningApp
//
//  Created by Saqib Adnan on 01/01/2024.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {
    @EnvironmentObject var model:ContentModel
    func makeUIView(context: Context) -> some UITextView {
        
        let textView = UITextView()
        textView.isEditable = false
        
        return textView
    }
    func updateUIView(_ textView: UIViewType, context: Context) {
        
        //Set the attributed text for the lesson
        textView.attributedText = model.codeText
        
        //Scroll back to the top
        textView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
    }
}

