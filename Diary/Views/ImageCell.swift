//
//  ImageCell.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

// The collectioview cell of the DetailController for displaying Photos
class ImageCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: ImageCell.self)

    @IBOutlet weak var image: UIImageView!
    
}
