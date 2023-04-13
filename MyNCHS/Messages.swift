//
//  Messages.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Messages: View {
    
    @StateObject var model = WebViewModel()
        var body: some View {
            WebView2(webView: model.webView)
        }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
