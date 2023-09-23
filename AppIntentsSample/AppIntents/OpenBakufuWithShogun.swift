//
//  OpenBakufuWithShogun.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

struct OpenBakufuWithShogun: AppIntent {
    static let title: LocalizedStringResource = "[デモアプリ]将軍（フリー入力）で幕府を開く"
    static var openAppWhenRun: Bool = true
    
    // title はショートカットアプリでプレースホルダー
    @Parameter(title: "幕府名")
    var bakufu: BakufuType
    
    @Parameter(title: "将軍名")
    var shogun: String
    
    @MainActor
    func perform() async throws -> some IntentResult {
        print("bakufu:", bakufu, "shogun:", shogun)
        ViewModel.shared.update(bakufuType: bakufu, shogun: shogun)
        return .result()
    }
    
    static var parameterSummary: some ParameterSummary {
           Summary("Open \(\.$bakufu) with \(\.$shogun)")
    }
}

