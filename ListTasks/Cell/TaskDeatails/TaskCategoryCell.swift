//
//  TaskCategoryCell.swift
//  ListTasks
//
//  Created by Евгений on 20.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import UIKit

class TaskCategoryCell: UITableViewCell {

    @IBOutlet weak var textCategoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
