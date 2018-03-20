//
//  PlayerCell.swift
//  Rating
//
//  Created by FDC Yongbo on 19/03/2018.
//  Copyright © 2018 FDC Yongbo. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player? {
        didSet {
           setPlayer()
        }
    }
    
    func setPlayer() {
        guard let plyr = self.player else {
            return
        }
        gameLabel.text = plyr.game
        nameLabel.text = plyr.name
        ratingImageView.image = image(forRating: plyr.rating)
    }
    
    func image(forRating rating:Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


