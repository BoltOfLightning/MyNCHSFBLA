//
//  Mailing.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 4/15/23.
//

import SwiftUI

// Integrates gmail to display when mailing icon is clicked
struct Mailing: View {
    @StateObject var model = WebViewModel()
    
    // Displays gmail on the screen using WebView2
    var body: some View {
        WebView2(webView: model.webView)
    }
}

struct Mailing_Previews: PreviewProvider {
    static var previews: some View {
        Mailing()
    }
}
