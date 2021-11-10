//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Matheus Prada on 28/10/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
