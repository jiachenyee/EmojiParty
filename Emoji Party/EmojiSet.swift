//
//  EmojiSet.swift
//  Emoji Party
//
//  Created by Jia Chen Yee on 19/7/22.
//

import Foundation

struct EmojiSet: Identifiable {
    var id = UUID()
    var name: String
    var emojis: [String]
}
