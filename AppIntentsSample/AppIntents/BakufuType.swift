//
//  BakufuType.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation
import AppIntents

/*
 BakufuTypeの定義とextensionを別ファイルにすると、
 Xcode15でcaseDisplayRepresentationsでエラーが起こる。
 */

enum BakufuType: String {
    case kamakura = "鎌倉幕府"
    case muromachi = "室町幕府"
    case edo = "江戸幕府"
}


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



