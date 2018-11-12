//
//  PaintingTableViewCellDelegate.swift
//  Art Gallery
//
//  Created by Lotanna Igwe-Odunze on 11/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
