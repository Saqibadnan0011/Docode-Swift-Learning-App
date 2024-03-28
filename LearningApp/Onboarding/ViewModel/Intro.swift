//
//  Intro.swift
//  LearningApp
//
//  Created by Saqib Adnan on 02/03/2024.
//

import Foundation
import SwiftUI

struct Intro: Identifiable{
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var description: String
    var img: String
    var color: Color
    var offset: CGSize = .zero
}
