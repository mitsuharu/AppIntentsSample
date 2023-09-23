//
//  AppShortcutsProvider.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

struct IntentProvider: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        return [
            AppShortcut(intent: OpenApp(),
                        phrases: ["\(.applicationName)でアプリを開て"]),
            AppShortcut(intent: OpenBakufu(),
                        phrases: ["\(.applicationName)で幕府を開て"]),
            AppShortcut(intent: OpenBakufuWithShogun(),
                        phrases: ["\(.applicationName)で将軍（フリー入力）で幕府を開て"]),
            AppShortcut(intent: OutoutBakufu(),
                        phrases: ["\(.applicationName)で幕府のテキストで返して"]),
        ]
    }
}
