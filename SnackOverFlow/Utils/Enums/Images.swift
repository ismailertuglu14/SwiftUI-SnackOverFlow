//
//  Images.dart.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

enum Images: String {
    case juice = "img_juice"
    
    
}

struct ImageItems {
    
    enum Authentication: String{
        case login = "wolcano"
    }
    
}

extension String {
    
    /// String path to image
    /// - Returns: realeted image from image asset
    func image() -> Image {
        return Image(self)
    }
}
