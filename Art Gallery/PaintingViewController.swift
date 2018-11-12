//
//  ViewController.swift
//  Art Gallery
//
//  Created by Lotanna Igwe-Odunze on 11/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

   //Outlet
    @IBOutlet weak var galleryTable: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        galleryTable.reloadData()
    }
}

