//
//  GoogleSignInPageApp.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 6/30/22.
//

import SwiftUI
import Firebase

@main
struct GoogleSignInPageApp: App {
    @StateObject var viewModel = AuthenticationViewModel()

    init() {
        setupAuthentication()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

extension GoogleSignInPageApp {
  private func setupAuthentication() {
    FirebaseApp.configure()
  }
}
