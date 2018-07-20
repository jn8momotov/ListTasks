//
//  ListTasksTableViewController.swift
//  ListTasks
//
//  Created by Евгений on 19.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import UIKit

class ListTasksTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    // Количество секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // Количество строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTasks.count
    }

    // Устанавливаем значения в строки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as? TaskListCell else {
            fatalError("cell type")
        }
        
        let task = listTasks[indexPath.row]
        cell.nameTaskLabel.text = task.name
        cell.taskCategoryLabel.text = task.category
        cell.countDayTaskLabel.text = task.countDay
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    
    // Метод срабатывающий при переходе на другой Контроллер
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Смотрим какой сегвей сработал
        switch segue.identifier! {
        // Сигвей для редактирования задачи
        case "updateTask":
            // Событие нажатия преобразуем в нашу ячейку
            let selectedCell = sender as! TaskListCell
            // Индакс в массиве
            let selectedIndex = (tableView.indexPath(for: selectedCell)?.row)!
            // Выбранная задача
            let selectedTask = listTasks[selectedIndex]
            // Наш новый контроллер
            guard let controller = segue.destination as? TaskDetailsViewController else {
                fatalError("Error")
            }
            // Меняем название Контроллера
            controller.title = "Редактирование"
            // Передаем задачу, которую выбрали
            // в другой контроллер
            controller.task = selectedTask
        default:
            return
        }
        
    }

}
