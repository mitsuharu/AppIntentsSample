//
//  ViewModel.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import Foundation

final class ViewModel: ObservableObject {
    static let shared = ViewModel()
    
    @Published private(set) var imageName: String = ""
    @Published private(set) var decsription: String = ""
    
    func update(bakufuType: BakufuType) {
        switch bakufuType{
        case .kamakura:
            decsription = "\(bakufuType.rawValue)は源頼朝が創立した"
            imageName = "Genji"
        case .muromachi:
            decsription = "\(bakufuType.rawValue)は足利尊氏が創立した"
            imageName = "Ashikaga"
        case .edo:
            decsription = "\(bakufuType.rawValue)は徳川家康が創立した"
            imageName = "Tokugawa"
        }
    }
    
    func update(bakufuType: BakufuType, shogun: String) {
        switch bakufuType{
        case .kamakura:
            imageName = "Genji"
        case .muromachi:
            imageName = "Ashikaga"
        case .edo:
            imageName = "Tokugawa"
        }
        decsription = "\(bakufuType.rawValue)は\(shogun)が創立した"
    }
}
