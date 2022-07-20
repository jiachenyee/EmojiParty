//
//  EmojiView.swift
//  Emoji Party
//
//  Created by Jia Chen Yee on 19/7/22.
//

import SwiftUI
import Subsonic

struct EmojiView: View {
    
    var emojiSet: EmojiSet
    
    @State var selectedEmojis: [String] = []
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100))]) {
                ForEach(emojiSet.emojis, id: \.self) { emoji in
                    Button {
                        selectedEmojis.append(emoji)
                    } label: {
                        Text(emoji)
                            .font(.system(size: 100))
                    }
                }
            }
            
            BouncyView(emojis: $selectedEmojis) { what in
                switch what {
                case .emoji:
                    play(sound: "doink.m4a")
                case .wall:
                    play(sound: "boink.m4a")
                }
                
            }
            .background(.gray)
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiSet: EmojiSet(name: "Fruits", emojis: ["🍌", "🍎", "🍓", "🍉", "🍍", "🥑"]))
    }
}
