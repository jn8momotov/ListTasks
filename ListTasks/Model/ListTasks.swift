//
//  ListTasks.swift
//  ListTasks
//
//  Created by Евгений on 19.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import Foundation

enum Category: String {
    case family = "Семья"
    case home = "Дом"
    case busines = "Бизнес"
    case work = "Работа"
    case sport = "Спорт"
}

var listTasks: [Task] =
    [Task(name: "Купить машину", category: Category.home.rawValue, priority: "Высокий", countDay: "10 дн", info: "Нет информации", status: true),
     Task(name: "Решить задачу", category: Category.work.rawValue, priority: "Средний", countDay: "5 дн", info: "В вашем распоряжении 10 тысяч серверов в дата-центре с возможностью удалённого управления и один день, чтобы получить миллион долларов. Что вы для этого сделаете?", status: false),
     Task(name: "Купить поесть", category: Category.home.rawValue, priority: "Высокий", countDay: "-22 дн", info: "Тут будет более подробрная информация", status: true)]
