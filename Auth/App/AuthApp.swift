//
//  AuthApp.swift
//  Auth
//
//  Created by user on 2/21/24.
//

import SwiftUI

@main
struct AuthApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}
