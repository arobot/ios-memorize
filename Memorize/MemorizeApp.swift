//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 罗威 on 2022/12/31.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
