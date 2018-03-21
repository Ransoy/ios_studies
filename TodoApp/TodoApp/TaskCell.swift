//
//  taskCell.swift
//  TodoApp
//
//  Created by FDC Yongbo on 21/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    
    @IBOutlet weak var imageStat: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var task: Task? {
        didSet{
            
            let status = task?.status ?? false
            
            if status {
                imageStat.image = #imageLiteral(resourceName: "done")
            } else {
                imageStat.image = #imageLiteral(resourceName: "not-done")
            }
            name.text = task?.taskname
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
