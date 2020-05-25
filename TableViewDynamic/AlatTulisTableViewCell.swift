//
//  AlatTulisTableViewCell.swift
//  TableViewDynamic
//
//  Created by Nani Sukma Putri Pratama on 25/05/20.
//  Copyright © 2020 Nani Sukma Putri Pratama. All rights reserved.
//

import UIKit

class AlatTulisTableViewCell: UITableViewCell {

    @IBOutlet weak var hargaAlatTulis: UILabel!
    @IBOutlet weak var namaAlatTulis: UILabel!
    @IBOutlet weak var photoAlatTulis: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
