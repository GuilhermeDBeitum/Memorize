//
//  MemorizeApp.swift
//  Xpointer
//
//  Created by Guilherme Douglas Beitum on 26/06/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
