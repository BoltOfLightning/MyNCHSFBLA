//
//  MyNCHS.swift
//  MyNCHS
//
//  Updated by SaiLalith Kanumuri on 10/21/22.
//

import SwiftUI
import Firebase

@main
struct MyNCHSApp: App {
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

extension MyNCHSApp {
  private func setupAuthentication() {
    FirebaseApp.configure()
  }
}
