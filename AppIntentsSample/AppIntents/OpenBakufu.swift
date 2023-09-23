//
//  OpenBakufu.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

struct OpenBakufu: AppIntent {
    static let title: LocalizedStringResource = "[デモアプリ]幕府を開く"
    static var openAppWhenRun: Bool = true
    
    // title はショートカットアプリでプレースホルダー
    @Parameter(title: "幕府名")
    var bakufu: BakufuType
        
    @MainActor
    func perform() async throws -> some IntentResult {
        ViewModel.shared.update(bakufuType: bakufu)
        return .result()
    }
    
    static var parameterSummary: some ParameterSummary {
        Summary("Open \(\.$bakufu)")
    }

}

//// アプリの事前設定されたショートカットを提供する
//struct OpenDemoShortcuts: AppShortcutsProvider {
//    static var appShortcuts: [AppShortcut] {
//        AppShortcut(
//            intent: OpenBakufu(), phrases: []
//            )
//    }
//}


