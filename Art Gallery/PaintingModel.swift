//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Lotanna Igwe-Odunze on 11/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
   
    //Arrays
    var paintings: [Painting] = []
    var imageArray: [UIImage] = []
    
    weak var tableView: UITableView?
    
    
    //Toggle Liked Button
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else { return }
        if paintings[indexPath.row].isLiked == true {
            paintings[indexPath.row].isLiked == false
        }
        else { paintings[indexPath.row].isLiked == true }
    }
    
    //Set up Sections
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    //Set up Rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    //Set up Cell to access properties declared in PaintingTableView Cell via casting
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "paintCell") as! PaintingTableViewCell
        
        cell.delegate = self
        
        cell.paintFrame.image = paintings[indexPath.row].image
        
        cell.statusLabel.text = paintings[indexPath.row].isLiked ? "Liked" : "Not Liked"
        
        return cell
    }
    
    //Put images in array
    
    func photoMaker() {
        
        for x in 1...12 {
            
        guard let pic = UIImage(named: "image\(x)") else { return }
        imageArray.append(pic) }
    }
    
    //Create paintings with images
    
    func daVinci() {
        for item in imageArray {
            
            let masterpiece = Painting(image: item)
            paintings.append(masterpiece)
        }
    }
    
}
