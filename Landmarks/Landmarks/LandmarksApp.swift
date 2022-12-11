//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/21.
//

import SwiftUI

/*
 * main attribute -> App entry point
 */
@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        .commands {
            LandmarkCommands()
        }
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
