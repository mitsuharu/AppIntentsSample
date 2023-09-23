//
//  OutoutBakufu.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

struct OutoutBakufu: AppIntent {
    static let title: LocalizedStringResource = "[デモアプリ]幕府のテキストで返す"
    static var openAppWhenRun: Bool = false

    // title はショートカットアプリでプレースホルダー
    @Parameter(title: "幕府名")
    var bakufu: BakufuType

    @MainActor
    func perform() async throws -> some IntentResult {
        ViewModel.shared.update(bakufuType: bakufu)
        return .result(value: ViewModel.shared.decsription)
    }

    static var parameterSummary: some ParameterSummary {
        Summary("Return \(\.$bakufu)")
    }
}
