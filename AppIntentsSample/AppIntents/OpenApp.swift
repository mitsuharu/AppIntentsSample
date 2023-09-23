//
//  OpenApp.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

struct OpenApp: AppIntent {
    static let title: LocalizedStringResource = "[デモアプリ]アプリを開く"
    static var openAppWhenRun: Bool = true
            
    @MainActor
    func perform() async throws -> some IntentResult {
        return .result()
    }
    
    static var parameterSummary: some ParameterSummary {
        Summary("Open App")
    }

}
