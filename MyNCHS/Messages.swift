//
//  Messages.swift
//  MyNCHS
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Messages: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    @State var items : [Any] = []
    @State var sheet = false
    
    var body: some View {
        Text("messages")
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
