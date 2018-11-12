//
//  Painting.swift
//  Art Gallery
//
//  Created by Lotanna Igwe-Odunze on 11/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    var image: UIImage
    var isLiked: Bool
    
    init(image: UIImage) {
        self.image = image
        self.isLiked = false
    }
}
