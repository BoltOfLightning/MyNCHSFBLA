//
//  Messages.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/9/22.
//

import SwiftUI

struct Messages: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                if selectedImage != nil {
                    Image(uiImage: selectedImage!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                    //ShareLink(item: selectedImage!, preview: SharePreview("Big Ben",image: selectedImage!))

                } else {
                    Image(systemName: "snow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                }
                
                Button("Camera") {
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                }.padding()
                
                Button("photo") {
                    self.sourceType = .photoLibrary
                    self.isImagePickerDisplay.toggle()
                }.padding()
            }
            .navigationBarTitle("Demo")
            .sheet(isPresented: self.$isImagePickerDisplay) {
                ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
            }
            
        }
    }
}

//public struct ImageWrapper: Codable {
//
//    // Enums
//
//    public enum CodingKeys: String, CodingKey {
//        case image
//    }
//
//    // Properties
//
//    public let image: UIImage
//
//    // Inits
//
//    public init(image: UIImage) {
//        self.image = image
//    }
//
//    // Methods
//
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let data = try container.decode(Data.self, forKey: CodingKeys.image)
//        if let image = UIImage(data: data) {
//            self.image = image
//        } else {
//            // Error Decode
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        if let imageData: Data = image.pngData() {
//            try container.encode(imageData, forKey: .image)
//        } else {
//            // Error Encode
//        }
//    }
//
//}



