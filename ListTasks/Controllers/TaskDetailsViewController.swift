//
//  TaskDetailsViewController.swift
//  ListTasks
//
//  Created by Евгений on 20.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import UIKit

class TaskDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var task: Task!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Количество секций
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    // Количество строк в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // Установка высоты строки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Для строки с информацией устанавливаем высоту 120
        if indexPath.section == 4 {
            return 120
        }
        // Для остальных строк высота 45
        else {
            return 45
        }
    }
    
    // Заполнение ячеек данными
    // Объект для заполнения данных был передан из предыдущего контроллера в переменную task
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            
            guard let taskNameCell = tableView.dequeueReusableCell(withIdentifier: "cellTaskName", for: indexPath) as? TaskNameCell else {
                fatalError("Error cell")
            }
            taskNameCell.textNameLabel.text = task.name
            return taskNameCell
            
        case 1:
            
            guard let taskCategoryCell = tableView.dequeueReusableCell(withIdentifier: "cellTaskCategory", for: indexPath) as? TaskCategoryCell else {
                fatalError("Error cell")
            }
            taskCategoryCell.textCategoryLabel.text = task.category
            return taskCategoryCell
            
        case 2:
            
            guard let taskPriorityCell = tableView.dequeueReusableCell(withIdentifier: "cellTaskPriority", for: indexPath) as? TaskPriorityCell else {
                fatalError("Error cell")
            }
            taskPriorityCell.textPriorityLabel.text = task.priority
            return taskPriorityCell
            
        case 3:
            
            guard let taskDeadlineCell = tableView.dequeueReusableCell(withIdentifier: "cellTaskDeadline", for: indexPath) as? TaskDeadlineCell else {
                fatalError("Error cell")
            }
            taskDeadlineCell.textDeadlineLabel.text = task.countDay
            return taskDeadlineCell
            
        case 4:
            
            guard let taskInfoCell = tableView.dequeueReusableCell(withIdentifier: "cellTaskInfo", for: indexPath) as? TaskInfoCell else {
                fatalError("Error cell")
            }
            taskInfoCell.textInfoField.text = task.info
            return taskInfoCell
            
        default:
            return UITableViewCell()
        }
        
    }
    
    // Название секций
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Название"
        case 1:
            return "Категория"
        case 2:
            return "Приоритет"
        case 3:
            return "Дата"
        case 4:
            return "Информация"
        default:
            return ""
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
