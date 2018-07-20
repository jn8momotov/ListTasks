//
//  TaskNameCell.swift
//  ListTasks
//
//  Created by Евгений on 20.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import UIKit

class TaskNameCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var textNameLabel: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textNameLabel.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // После нажатия на клавишу return на клавиатуре
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Скрыть фокус с текстового поля (клавиатура исчезнет)
        textNameLabel.resignFirstResponder()
        return true
    }

}
