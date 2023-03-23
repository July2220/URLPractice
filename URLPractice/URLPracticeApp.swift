//
//  URLPracticeApp.swift
//  URLPractice
//
//  Created by july on 2023/3/22.
//

import SwiftUI

@main
struct URLPracticeApp: App {
    @StateObject private var networkManager = NetworkManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(networkManager)
        }
    }
}
