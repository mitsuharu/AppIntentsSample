//
//  BakufuType+AppIntents.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

extension BakufuType: AppEnum {
   
    // カスタム・タイプのユーザー・インターフェースのプレゼンテーションを記述するタイプ
    // ユーザーから見るローカライズ
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "幕府"

    // 人が読むための辞書リテラル
    static var caseDisplayRepresentations: [BakufuType: DisplayRepresentation] = [
        .kamakura: "鎌倉幕府",
        .muromachi: "室町幕府",
        .edo: "江戸幕府",
    ]
}



