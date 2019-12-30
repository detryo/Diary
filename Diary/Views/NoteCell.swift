//
//  NoteCell.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

// The tableview cell of the MasterController for displaying Notes
class NoteCell: UITableViewCell {
    
    
    @IBOutlet weak var noteImageView: UIImageView!
    @IBOutlet weak var noteDate: UILabel!
    @IBOutlet weak var noteText: UILabel!
    @IBOutlet weak var localisationNote: UILabel!
    @IBOutlet weak var smileyImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
