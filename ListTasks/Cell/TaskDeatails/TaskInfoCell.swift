//
//  TaskInfoCell.swift
//  ListTasks
//
//  Created by Евгений on 20.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import UIKit

class TaskInfoCell: UITableViewCell {

    @IBOutlet weak var textInfoField: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
