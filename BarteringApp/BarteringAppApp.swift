//
//  BarteringAppApp.swift
//  BarteringApp
//
//  Created by Ted Xiong on 9/8/22.
//

import SwiftUI
import Firebase

@main
struct BarteringAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
