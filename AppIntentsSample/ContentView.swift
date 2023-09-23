//
//  ContentView.swift
//  AppIntentsSample
//
//  Created by Mitsuharu Emoto on 2023/09/23.
//

import SwiftUI
import AppIntents

struct ContentView: View {
    
    @ObservedObject private var viewModel = ViewModel.shared
    
    var body: some View {
        VStack {
            if viewModel.decsription.isEmpty {
                Text("ショートカットから入力してください")
            }else{
                if !viewModel.imageName.isEmpty {
                    Image(viewModel.imageName)
                }
                Text(viewModel.decsription)
            }
            Spacer().frame(width: 10, height: 10)
            Link("go to Shortcuts app", destination: URL(string: "shortcuts://")!)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

