//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Lotanna Igwe-Odunze on 11/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var paintFrame: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    
}
