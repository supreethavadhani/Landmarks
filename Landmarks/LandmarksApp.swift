//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Supreeth Avadhani on 3/20/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
