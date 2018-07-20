//
//  TaskListCell.swift
//  ListTasks
//
//  Created by Евгений on 20.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import UIKit

class TaskListCell: UITableViewCell {
    
    @IBOutlet weak var nameTaskLabel: UILabel!
    
    @IBOutlet weak var taskCategoryLabel: UILabel!
    
    @IBOutlet weak var countDayTaskLabel: UILabel!
    
    @IBOutlet weak var statusButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
